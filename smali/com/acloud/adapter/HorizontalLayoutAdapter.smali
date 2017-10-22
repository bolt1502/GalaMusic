.class public abstract Lcom/acloud/adapter/HorizontalLayoutAdapter;
.super Ljava/lang/Object;
.source "HorizontalLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/adapter/HorizontalLayoutAdapter$ScrollViewLayoutCallback;,
        Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mScrollViewLayoutCallback:Lcom/acloud/adapter/HorizontalLayoutAdapter$ScrollViewLayoutCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    .local p0, "this":Lcom/acloud/adapter/HorizontalLayoutAdapter;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->dataList:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->mScrollViewLayoutCallback:Lcom/acloud/adapter/HorizontalLayoutAdapter$ScrollViewLayoutCallback;

    .line 29
    iput-object p1, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/acloud/adapter/HorizontalLayoutAdapter;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->dataList:Ljava/util/List;

    .line 65
    :cond_0
    if-eqz p1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->notifyDataSetChanged(Z)V

    .line 68
    return-void
.end method

.method public abstract getConvertViewId(I)I
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lcom/acloud/adapter/HorizontalLayoutAdapter;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>;"
    iget-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/acloud/adapter/HorizontalLayoutAdapter;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>;"
    const/4 v1, 0x0

    .line 78
    iget-object v2, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->dataList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->dataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    :cond_0
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "g":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public abstract getNewHolder(I)Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/acloud/adapter/HorizontalLayoutAdapter",
            "<TT;>.ViewHolder<TT;>;"
        }
    .end annotation
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/acloud/adapter/HorizontalLayoutAdapter;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>;"
    const/4 v5, 0x0

    .line 94
    if-nez p2, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->getNewHolder(I)Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;

    move-result-object v1

    .line 96
    .local v1, "holder":Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>.ViewHolder<TT;>;"
    iget-object v2, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->getConvertViewId(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    invoke-virtual {v1, p2, p1}, Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;->initHolder(Landroid/view/View;I)V

    .line 98
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    :goto_0
    invoke-virtual {v1, v5}, Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;->setUpdate(Z)V

    .line 105
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;->loadData(Ljava/lang/Object;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_1
    return-object p2

    .line 100
    .end local v1    # "holder":Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>.ViewHolder<TT;>;"
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>.ViewHolder<TT;>;"
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public notifyDataSetChanged(Z)V
    .locals 1
    .param p1, "isSeekToStartPos"    # Z

    .prologue
    .line 162
    .local p0, "this":Lcom/acloud/adapter/HorizontalLayoutAdapter;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>;"
    iget-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->mScrollViewLayoutCallback:Lcom/acloud/adapter/HorizontalLayoutAdapter$ScrollViewLayoutCallback;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->mScrollViewLayoutCallback:Lcom/acloud/adapter/HorizontalLayoutAdapter$ScrollViewLayoutCallback;

    invoke-interface {v0, p1}, Lcom/acloud/adapter/HorizontalLayoutAdapter$ScrollViewLayoutCallback;->onUpdate(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/acloud/adapter/HorizontalLayoutAdapter;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->dataList:Ljava/util/List;

    if-ne v0, p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->dataList:Ljava/util/List;

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    if-eqz p1, :cond_2

    .line 54
    iget-object v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->notifyDataSetChanged(Z)V

    goto :goto_0
.end method

.method public setScrollViewLayoutCallback(Lcom/acloud/adapter/HorizontalLayoutAdapter$ScrollViewLayoutCallback;)V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lcom/acloud/adapter/HorizontalLayoutAdapter;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>;"
    .local p1, "callback":Lcom/acloud/adapter/HorizontalLayoutAdapter$ScrollViewLayoutCallback;, "Lcom/acloud/adapter/HorizontalLayoutAdapter$ScrollViewLayoutCallback;"
    iput-object p1, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter;->mScrollViewLayoutCallback:Lcom/acloud/adapter/HorizontalLayoutAdapter$ScrollViewLayoutCallback;

    .line 39
    return-void
.end method

.method public updateView(ILandroid/view/View;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/acloud/adapter/HorizontalLayoutAdapter;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>;"
    const/4 v3, 0x1

    .line 119
    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;

    .line 121
    .local v1, "holder":Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>.ViewHolder<TT;>;"
    invoke-virtual {v1}, Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;->getUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    .end local v1    # "holder":Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>.ViewHolder<TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local v1    # "holder":Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>.ViewHolder<TT;>;"
    :cond_1
    invoke-virtual {v1, v3}, Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;->setUpdate(Z)V

    .line 126
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/acloud/adapter/HorizontalLayoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;->loadData(Ljava/lang/Object;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
