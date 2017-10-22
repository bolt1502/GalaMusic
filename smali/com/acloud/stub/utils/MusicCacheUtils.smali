.class public Lcom/acloud/stub/utils/MusicCacheUtils;
.super Ljava/lang/Object;
.source "MusicCacheUtils.java"


# static fields
.field private static pThis:Lcom/acloud/stub/utils/MusicCacheUtils;


# instance fields
.field private mCollectMusicInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrectMusicInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalMusicInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/stub/utils/MusicCacheUtils;->pThis:Lcom/acloud/stub/utils/MusicCacheUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/acloud/stub/utils/MusicCacheUtils;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/acloud/stub/utils/MusicCacheUtils;->pThis:Lcom/acloud/stub/utils/MusicCacheUtils;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/acloud/stub/utils/MusicCacheUtils;

    invoke-direct {v0}, Lcom/acloud/stub/utils/MusicCacheUtils;-><init>()V

    sput-object v0, Lcom/acloud/stub/utils/MusicCacheUtils;->pThis:Lcom/acloud/stub/utils/MusicCacheUtils;

    .line 18
    :cond_0
    sget-object v0, Lcom/acloud/stub/utils/MusicCacheUtils;->pThis:Lcom/acloud/stub/utils/MusicCacheUtils;

    return-object v0
.end method

.method public static getpThis()Lcom/acloud/stub/utils/MusicCacheUtils;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/acloud/stub/utils/MusicCacheUtils;->pThis:Lcom/acloud/stub/utils/MusicCacheUtils;

    return-object v0
.end method

.method public static setpThis(Lcom/acloud/stub/utils/MusicCacheUtils;)V
    .locals 0
    .param p0, "pThis"    # Lcom/acloud/stub/utils/MusicCacheUtils;

    .prologue
    .line 50
    sput-object p0, Lcom/acloud/stub/utils/MusicCacheUtils;->pThis:Lcom/acloud/stub/utils/MusicCacheUtils;

    .line 51
    return-void
.end method


# virtual methods
.method public getmCollectMusicInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/acloud/stub/utils/MusicCacheUtils;->mCollectMusicInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getmCurrectMusicInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/acloud/stub/utils/MusicCacheUtils;->mCurrectMusicInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getmTotalMusicInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/acloud/stub/utils/MusicCacheUtils;->mTotalMusicInfoList:Ljava/util/List;

    return-object v0
.end method

.method public setmCollectMusicInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "mCollectMusicInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    iput-object p1, p0, Lcom/acloud/stub/utils/MusicCacheUtils;->mCollectMusicInfoList:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setmCurrectMusicInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "mCurrectMusicInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    iput-object p1, p0, Lcom/acloud/stub/utils/MusicCacheUtils;->mCurrectMusicInfoList:Ljava/util/List;

    .line 35
    return-void
.end method

.method public setmTotalMusicInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "mTotalMusicInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    iput-object p1, p0, Lcom/acloud/stub/utils/MusicCacheUtils;->mTotalMusicInfoList:Ljava/util/List;

    .line 27
    return-void
.end method
