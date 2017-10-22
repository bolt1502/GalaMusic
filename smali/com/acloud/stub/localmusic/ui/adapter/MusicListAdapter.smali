.class public Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;
.super Lcom/acloud/adapter/GalaBaseAdapter;
.source "MusicListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;,
        Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/acloud/adapter/GalaBaseAdapter",
        "<",
        "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
        ">;"
    }
.end annotation


# instance fields
.field private isFavorite:Z

.field private mCollectOnClickListener:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;

.field private selectPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectOnClickListener"    # Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/acloud/adapter/GalaBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->selectPosition:I

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->isFavorite:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->mCollectOnClickListener:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;

    .line 29
    iput-object p2, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->mCollectOnClickListener:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;)Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->mCollectOnClickListener:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->isFavorite:Z

    return-void
.end method

.method static synthetic access$3(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->isFavorite:Z

    return v0
.end method

.method static synthetic access$4(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->selectPosition:I

    return v0
.end method


# virtual methods
.method public getConvertViewId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    const v0, 0x7f030009

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
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">.ViewHolder<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;

    invoke-direct {v0, p0}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$MusicListViewHolder;-><init>(Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;)V

    return-object v0
.end method

.method public setSelectPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->selectPosition:I

    .line 34
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->notifyDataSetInvalidated()V

    .line 35
    return-void
.end method
