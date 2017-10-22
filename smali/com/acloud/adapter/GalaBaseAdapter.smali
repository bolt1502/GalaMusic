.class public abstract Lcom/acloud/adapter/GalaBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalaBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
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

.field private mCurSelectedIndex:I

.field private mCurUpdatePostions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstVisibleItem:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsInit:Z

.field private mViewHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mCurSelectedIndex:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mViewHolders:Ljava/util/List;

    .line 30
    iput v1, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mFirstVisibleItem:I

    .line 31
    iput v1, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mVisibleCount:I

    .line 32
    iput-boolean v1, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mIsInit:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mCurUpdatePostions:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/adapter/GalaBaseAdapter;Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mIsInit:Z

    return-void
.end method

.method static synthetic access$1(Lcom/acloud/adapter/GalaBaseAdapter;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/acloud/adapter/GalaBaseAdapter;->onScrollStop()V

    return-void
.end method

.method static synthetic access$2(Lcom/acloud/adapter/GalaBaseAdapter;I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mFirstVisibleItem:I

    return-void
.end method

.method static synthetic access$3(Lcom/acloud/adapter/GalaBaseAdapter;I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mVisibleCount:I

    return-void
.end method

.method private onScrollStop()V
    .locals 4

    .prologue
    .line 266
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mCurUpdatePostions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 278
    return-void

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;->getTag()I

    move-result v1

    .line 268
    .local v1, "position":I
    iget v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mFirstVisibleItem:I

    if-lt v1, v2, :cond_1

    iget v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mFirstVisibleItem:I

    iget v3, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mVisibleCount:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mCurUpdatePostions:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;

    invoke-virtual {p0, v1}, Lcom/acloud/adapter/GalaBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;->updateImage(Ljava/lang/Object;I)V

    .line 266
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    .line 85
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mIsInit:Z

    .line 87
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    .line 89
    :cond_0
    if-eqz p1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/acloud/adapter/GalaBaseAdapter;->notifyDataSetChanged()V

    .line 92
    return-void
.end method

.method public addData(Ljava/util/List;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mIsInit:Z

    .line 101
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    .line 103
    :cond_0
    if-eqz p1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/acloud/adapter/GalaBaseAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method

.method public changeData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    if-ne v0, p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mIsInit:Z

    .line 71
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public abstract getConvertViewId(I)I
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 181
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    return-object v0
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
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    const/4 v1, 0x0

    .line 190
    iget-object v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 196
    :cond_0
    :goto_0
    return-object v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "g":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 203
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract getNewHolder(I)Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/acloud/adapter/GalaBaseAdapter",
            "<TT;>.ViewHolder<TT;>;"
        }
    .end annotation
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    iget v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mCurSelectedIndex:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 296
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    if-nez p2, :cond_2

    .line 297
    invoke-virtual {p0, p1}, Lcom/acloud/adapter/GalaBaseAdapter;->getNewHolder(I)Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;

    move-result-object v1

    .line 298
    .local v1, "holder":Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>.ViewHolder<TT;>;"
    iget-object v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Lcom/acloud/adapter/GalaBaseAdapter;->getConvertViewId(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 299
    invoke-virtual {v1, p2, p1}, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;->initHolder(Landroid/view/View;I)V

    .line 300
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 301
    iget-object v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;->setTag(I)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/acloud/adapter/GalaBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;->loadData(Ljava/lang/Object;I)V

    .line 313
    iget-boolean v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mIsInit:Z

    if-nez v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mCurUpdatePostions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {p0, p1}, Lcom/acloud/adapter/GalaBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;->updateImage(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_1
    :goto_1
    return-object p2

    .line 303
    .end local v1    # "holder":Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>.ViewHolder<TT;>;"
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;

    .line 305
    .restart local v1    # "holder":Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>.ViewHolder<TT;>;"
    iget-object v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public insertData(ILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mIsInit:Z

    .line 132
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    .line 134
    :cond_0
    if-eqz p2, :cond_1

    .line 135
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/acloud/adapter/GalaBaseAdapter;->notifyDataSetChanged()V

    .line 138
    :cond_1
    return-void
.end method

.method public insertData(ILjava/util/List;)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mIsInit:Z

    .line 116
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    .line 118
    :cond_0
    if-eqz p2, :cond_1

    .line 119
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 120
    invoke-virtual {p0}, Lcom/acloud/adapter/GalaBaseAdapter;->notifyDataSetChanged()V

    .line 122
    :cond_1
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mCurUpdatePostions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 285
    return-void
.end method

.method public removeAllData()V
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    invoke-virtual {p0}, Lcom/acloud/adapter/GalaBaseAdapter;->notifyDataSetChanged()V

    .line 144
    return-void
.end method

.method public removeData(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 151
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 156
    invoke-virtual {p0}, Lcom/acloud/adapter/GalaBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
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
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    if-ne v0, p1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mIsInit:Z

    .line 51
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    if-eqz p1, :cond_2

    .line 57
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/acloud/adapter/GalaBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setListView(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 212
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    if-nez p1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    instance-of v1, p1, Lcom/acloud/ui/view/AbsHListView;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 216
    check-cast v0, Lcom/acloud/ui/view/AbsHListView;

    .line 217
    .local v0, "listView":Lcom/acloud/ui/view/AbsHListView;
    new-instance v1, Lcom/acloud/adapter/GalaBaseAdapter$1;

    invoke-direct {v1, p0}, Lcom/acloud/adapter/GalaBaseAdapter$1;-><init>(Lcom/acloud/adapter/GalaBaseAdapter;)V

    invoke-virtual {v0, v1}, Lcom/acloud/ui/view/AbsHListView;->setOnScrollListener(Lcom/acloud/ui/view/AbsHListView$OnScrollListener;)V

    goto :goto_0

    .line 236
    .end local v0    # "listView":Lcom/acloud/ui/view/AbsHListView;
    :cond_2
    instance-of v1, p1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 237
    check-cast v0, Landroid/widget/AbsListView;

    .line 238
    .local v0, "listView":Landroid/widget/AbsListView;
    new-instance v1, Lcom/acloud/adapter/GalaBaseAdapter$2;

    invoke-direct {v1, p0}, Lcom/acloud/adapter/GalaBaseAdapter$2;-><init>(Lcom/acloud/adapter/GalaBaseAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method public setSelectedIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 165
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>;"
    iput p1, p0, Lcom/acloud/adapter/GalaBaseAdapter;->mCurSelectedIndex:I

    .line 166
    invoke-virtual {p0}, Lcom/acloud/adapter/GalaBaseAdapter;->notifyDataSetChanged()V

    .line 167
    return-void
.end method
