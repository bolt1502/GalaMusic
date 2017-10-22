.class public Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;
.super Lcom/acloud/adapter/GalaBaseAdapter;
.source "CurrectPlayListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/acloud/adapter/GalaBaseAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mPlayPosition:I

.field private mSelectListView:Landroid/widget/ListView;

.field private mSelectPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0, p1}, Lcom/acloud/adapter/GalaBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 16
    iput v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mPlayPosition:I

    .line 17
    iput v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mSelectPosition:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mSelectListView:Landroid/widget/ListView;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mPlayPosition:I

    return v0
.end method

.method static synthetic access$1(Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mSelectListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mSelectPosition:I

    return v0
.end method


# virtual methods
.method public getConvertViewId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    const v0, 0x7f030006

    return v0
.end method

.method public getNewHolder(I)Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/acloud/adapter/GalaBaseAdapter",
            "<",
            "Ljava/lang/String;",
            ">.ViewHolder<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;-><init>(Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter$CurrectPlayViewHolder;)V

    return-object v0
.end method

.method public getPlayPosition()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mPlayPosition:I

    return v0
.end method

.method public getSelectPosition()I
    .locals 3

    .prologue
    .line 37
    const-string v0, "aaaaaa"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "selectPosition _____2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mSelectPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mSelectPosition:I

    return v0
.end method

.method public setPlayPosition(I)V
    .locals 0
    .param p1, "playPosition"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mPlayPosition:I

    .line 22
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->notifyDataSetChanged()V

    .line 23
    return-void
.end method

.method public setSelectPosition(Landroid/widget/ListView;I)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "selectPosition"    # I

    .prologue
    .line 30
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mSelectListView:Landroid/widget/ListView;

    .line 31
    const-string v0, "aaaaaa"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "selectPosition _____1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput p2, p0, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->mSelectPosition:I

    .line 33
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/adapter/CurrectPlayListAdapter;->notifyDataSetChanged()V

    .line 34
    return-void
.end method
