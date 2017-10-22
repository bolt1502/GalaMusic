.class public Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;
.super Lcom/acloud/adapter/GalaBaseAdapter;
.source "LrcListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/acloud/adapter/GalaBaseAdapter",
        "<",
        "Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private m_nCurPostion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/acloud/adapter/GalaBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->m_nCurPostion:I

    .line 52
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;>;"
    invoke-direct {p0, p2}, Lcom/acloud/adapter/GalaBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->m_nCurPostion:I

    .line 47
    invoke-virtual {p0, p1}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->setData(Ljava/util/List;)V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->m_nCurPostion:I

    return v0
.end method

.method static synthetic access$1(Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public changeDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->m_nCurPostion:I

    .line 132
    invoke-virtual {p0, p1}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->setData(Ljava/util/List;)V

    .line 133
    return-void
.end method

.method public getConvertViewId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    const v0, 0x7f030007

    return v0
.end method

.method public getCurSelectedItem()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->m_nCurPostion:I

    return v0
.end method

.method public getNewHolder(I)Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/acloud/adapter/GalaBaseAdapter",
            "<",
            "Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;",
            ">.ViewHolder<",
            "Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$1;

    invoke-direct {v0, p0, p0}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$1;-><init>(Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;Lcom/acloud/adapter/GalaBaseAdapter;)V

    .line 106
    .local v0, "holder":Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;, "Lcom/acloud/adapter/GalaBaseAdapter<Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;>.ViewHolder<Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;>;"
    return-object v0
.end method

.method public setCurPlayTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 80
    :goto_1
    return-void

    .line 68
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->getTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->setCurSelectedItem(I)V

    goto :goto_1

    .line 72
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter$LrcData;->getTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_3

    .line 73
    if-eqz v1, :cond_2

    .line 74
    add-int/lit8 v1, v1, -0x1

    .line 76
    :cond_2
    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->setCurSelectedItem(I)V

    goto :goto_1

    .line 67
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setCurSelectedItem(I)V
    .locals 1
    .param p1, "nPostion"    # I

    .prologue
    .line 115
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->m_nCurPostion:I

    if-ne v0, p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iput p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->m_nCurPostion:I

    .line 119
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
