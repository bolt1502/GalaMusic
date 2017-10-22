.class public Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;
.super Lcom/acloud/activity/BaseActivity;
.source "ACT_MusicList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final ANIMATION_TIME:I = 0xc8

.field private static pThis:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;


# instance fields
.field public isFavorite:Z

.field private isFirst:Z

.field private isSearch:Z

.field private mCollectOnClickListener:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;

.field private mCollectallBtn:Landroid/widget/Button;

.field private mDetailAdapter:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

.field private mDetailBtn:Landroid/widget/Button;

.field private mDetailDownPageBtn:Landroid/widget/Button;

.field private mDetailItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mDetailLayout:Landroid/widget/LinearLayout;

.field private mDetailListView:Landroid/widget/ListView;

.field private mDetailUpPageBtn:Landroid/widget/Button;

.field private mDirList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirPathText:Landroid/widget/TextView;

.field private mDownPageBtn:Landroid/widget/Button;

.field private mFavoriteBtn:Landroid/widget/Button;

.field private mFromChooseLayout:Landroid/widget/LinearLayout;

.field private mMusicClassifyBtn:Landroid/widget/Button;

.field private mMusicFromBtn:Landroid/widget/Button;

.field private mMusicFromString:[I

.field private mMusicFromText:[Landroid/widget/TextView;

.field private mMusicItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

.field private mMusicListView:Landroid/widget/ListView;

.field private mMusicTypeBtn:Landroid/widget/Button;

.field private mMusicTypeLayout:Landroid/widget/LinearLayout;

.field private mMusicTypeString:[I

.field private mMusicTypeText:[Landroid/widget/TextView;

.field private mRefreshReceive:Landroid/content/BroadcastReceiver;

.field private mSearchEditor:Landroid/widget/EditText;

.field private mSearchLetterText:Landroid/widget/TextView;

.field private mSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalCountText:Landroid/widget/TextView;

.field private mUpPageBtn:Landroid/widget/Button;

.field private musicClassify:I

.field private musicFrom:I

.field private musicType:I

.field private scanOver:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->pThis:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/acloud/activity/BaseActivity;-><init>()V

    .line 63
    iput-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeText:[Landroid/widget/TextView;

    .line 64
    iput-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromText:[Landroid/widget/TextView;

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeString:[I

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromString:[I

    .line 74
    iput v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    .line 75
    iput-boolean v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    .line 76
    iput v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicClassify:I

    .line 77
    iput v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicFrom:I

    .line 79
    iput-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    .line 80
    iput-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailAdapter:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFirst:Z

    .line 83
    iput-boolean v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isSearch:Z

    .line 84
    iput-boolean v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->scanOver:Z

    .line 86
    iput-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDirList:Ljava/util/List;

    .line 88
    iput-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mCollectOnClickListener:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;

    .line 759
    new-instance v0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$1;

    invoke-direct {v0, p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$1;-><init>(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mRefreshReceive:Landroid/content/BroadcastReceiver;

    .line 783
    new-instance v0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$2;

    invoke-direct {v0, p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$2;-><init>(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 819
    new-instance v0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$3;

    invoke-direct {v0, p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$3;-><init>(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 40
    return-void

    .line 66
    :array_0
    .array-data 4
        0x7f06003e
        0x7f06003f
        0x7f060040
        0x7f060041
    .end array-data

    .line 67
    :array_1
    .array-data 4
        0x7f06004d
        0x7f06004e
        0x7f06004f
    .end array-data
.end method

.method static synthetic access$0(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 836
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setNowListSelectPosition(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->scanOver:Z

    return-void
.end method

.method static synthetic access$10(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    return-object v0
.end method

.method static synthetic access$11(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->refreshCollectMusicList(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    return-void
.end method

.method static synthetic access$12(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->showMessageDialog(ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V

    return-void
.end method

.method static synthetic access$13(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mTotalCountText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->initDirList()V

    return-void
.end method

.method static synthetic access$3(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setCurrectData()V

    return-void
.end method

.method static synthetic access$4(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    return v0
.end method

.method static synthetic access$5(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->initSetListFromDirectory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->initSetListFromSinger(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;Z)V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setCurrectMusicList(Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailAdapter:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private changeMusicClassify()V
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicClassify:I

    packed-switch v0, :pswitch_data_0

    .line 485
    :goto_0
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicClassify:I

    invoke-static {p0, v0}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicClassify(Landroid/content/Context;I)V

    .line 486
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setMusicClassifyBtnText()V

    .line 487
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setCurrectMusicList(Z)V

    .line 488
    return-void

    .line 476
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicClassify:I

    goto :goto_0

    .line 479
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicClassify:I

    goto :goto_0

    .line 482
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicClassify:I

    goto :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private changeMusicFavorite()V
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    if-eqz v0, :cond_0

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    .line 552
    :goto_0
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    invoke-static {p0, v0}, Lcom/acloud/stub/utils/MusicConfigData;->setIsFavorite(Landroid/content/Context;Z)V

    .line 553
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setFavoriteBtnBackground()V

    .line 554
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setCurrectMusicList(Z)V

    .line 555
    return-void

    .line 550
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    goto :goto_0
.end method

.method private clearTypeBtnTextColor()V
    .locals 3

    .prologue
    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeText:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 207
    return-void

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeText:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->pThis:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    return-object v0
.end method

.method private initConfigData()V
    .locals 2

    .prologue
    .line 194
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getMusicType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    .line 195
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getIsFavorite(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    .line 196
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getMusicClassify(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicClassify:I

    .line 197
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getMusicFromChoose(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicFrom:I

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSetList:Ljava/util/List;

    .line 200
    new-instance v0, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mCollectOnClickListener:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;-><init>(Landroid/content/Context;Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    .line 201
    return-void
.end method

.method private initDirList()V
    .locals 4

    .prologue
    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDirList:Ljava/util/List;

    .line 330
    sget-object v1, Lcom/acloud/stub/localmusic/QtActivity;->mDirList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    return-void

    .line 330
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    .local v0, "dirPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDirList:Ljava/util/List;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initReceive()V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v0, "refreshFilter":Landroid/content/IntentFilter;
    const-string v1, "action_music_refresh_position"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v1, "action_music_refresh_list"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mRefreshReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    return-void
.end method

.method private initSetListFromDirectory(Ljava/lang/String;)V
    .locals 5
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 412
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTotalMusicInfoList()Ljava/util/List;

    move-result-object v1

    .line 413
    .local v1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 418
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDirList:Ljava/util/List;

    sget-object v4, Lcom/acloud/stub/localmusic/QtActivity;->mDirList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDirPathText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-static {p0, p1}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryDirPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 421
    return-void

    .line 413
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 414
    .local v0, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSetList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initSetListFromSinger(Ljava/lang/String;)V
    .locals 4
    .param p1, "singer"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 425
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTotalMusicInfoList()Ljava/util/List;

    move-result-object v0

    .line 426
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 431
    invoke-static {p0, p1}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmorySinger(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailBtn:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 433
    return-void

    .line 427
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSetList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isMusicFromCurPath(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 527
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "paths":[Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v1, v3

    const-string v4, "emulated"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 529
    .local v0, "isSdcard":Z
    iget v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicFrom:I

    packed-switch v3, :pswitch_data_0

    .line 543
    :cond_0
    const/4 v2, 0x0

    :goto_0
    :pswitch_0
    return v2

    .line 533
    :pswitch_1
    if-eqz v0, :cond_0

    goto :goto_0

    .line 538
    :pswitch_2
    if-nez v0, :cond_0

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isNeedPageBtnVisible(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "isNeedBtnVisibility":Z
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 389
    sget-object v1, Lcom/acloud/stub/localmusic/QtActivity;->mSingerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 390
    const/4 v0, 0x1

    .line 397
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 398
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailUpPageBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 399
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailDownPageBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 404
    :goto_1
    return-void

    .line 392
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 393
    sget-object v1, Lcom/acloud/stub/localmusic/QtActivity;->mDirList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 394
    const/4 v0, 0x1

    goto :goto_0

    .line 401
    :cond_2
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailUpPageBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailDownPageBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private refreshCollectMusicList(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    .locals 5
    .param p1, "data"    # Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->notifyDataSetChanged()V

    .line 378
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mTotalCountText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setMusicIsCollect(Ljava/lang/String;Z)V

    .line 382
    invoke-static {}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getInstance()Lcom/acloud/stub/db/LocalMusicDBHelper;

    move-result-object v0

    const-string v1, "table_music_collect_playlist"

    .line 383
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCollectList()Ljava/util/List;

    move-result-object v2

    .line 382
    invoke-virtual {v0, v1, v2}, Lcom/acloud/stub/db/LocalMusicDBHelper;->insertAllData(Ljava/lang/String;Ljava/util/List;)V

    .line 384
    return-void
.end method

.method private selectAll()V
    .locals 5

    .prologue
    .line 707
    iget-boolean v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    if-eqz v2, :cond_0

    .line 708
    const v2, 0x7f06004a

    new-instance v3, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$5;

    invoke-direct {v3, p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$5;-><init>(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)V

    invoke-virtual {p0, v2, v3}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->showMessageDialog(ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V

    .line 742
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->getData()Ljava/util/List;

    move-result-object v1

    .line 733
    .local v1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 737
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setMusicIsCollect(Ljava/util/List;)V

    .line 738
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->notifyDataSetChanged()V

    .line 739
    invoke-static {}, Lcom/acloud/stub/db/LocalMusicDBHelper;->getInstance()Lcom/acloud/stub/db/LocalMusicDBHelper;

    move-result-object v2

    const-string v3, "table_music_collect_playlist"

    .line 740
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCollectList()Ljava/util/List;

    move-result-object v4

    .line 739
    invoke-virtual {v2, v3, v4}, Lcom/acloud/stub/db/LocalMusicDBHelper;->insertAllData(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 733
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 734
    .local v0, "data":Lcom/acloud/stub/localmusic/data/MusicInfoData;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->setCollect(Z)V

    goto :goto_1
.end method

.method private setCurrectData()V
    .locals 7

    .prologue
    .line 279
    iget-object v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 280
    iget v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    packed-switch v5, :pswitch_data_0

    .line 320
    :goto_0
    iget v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 321
    iget-boolean v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    invoke-direct {p0, v5}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setCurrectMusicList(Z)V

    .line 323
    :cond_0
    iget-boolean v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFirst:Z

    if-eqz v5, :cond_1

    .line 324
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFirst:Z

    .line 326
    :cond_1
    return-void

    .line 282
    :pswitch_0
    iget-object v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSetList:Ljava/util/List;

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTotalMusicInfoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 285
    :pswitch_1
    const/4 v0, 0x0

    .line 286
    .local v0, "dirIndex":I
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getMusicMemmoryDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "dirPath":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFirst:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/acloud/stub/localmusic/QtActivity;->mDirList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 288
    sget-object v5, Lcom/acloud/stub/localmusic/QtActivity;->mDirList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 294
    :cond_2
    :goto_1
    sget-object v5, Lcom/acloud/stub/localmusic/QtActivity;->mDirList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->initSetListFromDirectory(Ljava/lang/String;)V

    .line 295
    iget-object v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailAdapter:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

    iget-object v6, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDirList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->setData(Ljava/util/List;)V

    .line 296
    iget-object v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailAdapter:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

    invoke-virtual {v5, v0}, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->setSelectionPosition(I)V

    .line 297
    iget-object v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailListView:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 290
    :cond_3
    sget-object v5, Lcom/acloud/stub/localmusic/QtActivity;->mDirList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->scanOver:Z

    if-eqz v5, :cond_2

    .line 291
    sget-object v5, Lcom/acloud/stub/localmusic/QtActivity;->mDirList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 300
    .end local v0    # "dirIndex":I
    .end local v1    # "dirPath":Ljava/lang/String;
    :pswitch_2
    const/4 v4, 0x0

    .line 301
    .local v4, "singerIndex":I
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getMusicMemmorySinger(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "singer":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFirst:Z

    if-eqz v5, :cond_4

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/acloud/stub/localmusic/QtActivity;->mSingerList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 303
    sget-object v5, Lcom/acloud/stub/localmusic/QtActivity;->mSingerList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 305
    :cond_4
    sget-object v5, Lcom/acloud/stub/localmusic/QtActivity;->mSingerList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->initSetListFromSinger(Ljava/lang/String;)V

    .line 306
    iget-object v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailAdapter:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

    sget-object v6, Lcom/acloud/stub/localmusic/QtActivity;->mSingerList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->setData(Ljava/util/List;)V

    .line 307
    iget-object v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailAdapter:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

    invoke-virtual {v5, v4}, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->setSelectionPosition(I)V

    .line 308
    iget-object v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 311
    .end local v3    # "singer":Ljava/lang/String;
    .end local v4    # "singerIndex":I
    :pswitch_3
    invoke-static {p0}, Lcom/acloud/stub/utils/MusicConfigData;->getMusicMemmorySearchText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "searchText":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFirst:Z

    if-eqz v5, :cond_5

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 313
    iget-object v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 315
    :cond_5
    iget-object v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchEditor:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setCurrectMusicList(Z)V
    .locals 8
    .param p1, "iscollect"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 495
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v2, "totalList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    if-eqz p1, :cond_0

    .line 497
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCollectList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 501
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v1, "setList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 521
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    invoke-virtual {v3, v1}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->setData(Ljava/util/List;)V

    .line 522
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mTotalCountText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setNowListSelectPosition(Ljava/lang/String;)V

    .line 524
    return-void

    .line 499
    .end local v0    # "i":I
    .end local v1    # "setList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    :cond_0
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSetList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 503
    .restart local v0    # "i":I
    .restart local v1    # "setList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    :cond_1
    iget v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicClassify:I

    if-nez v3, :cond_3

    .line 504
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isMusicFromCurPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 505
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 507
    :cond_3
    iget v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicClassify:I

    if-ne v3, v4, :cond_4

    .line 508
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getType()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 509
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isMusicFromCurPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 510
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 513
    :cond_4
    iget v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicClassify:I

    if-ne v3, v6, :cond_2

    .line 514
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getType()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 515
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isMusicFromCurPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 516
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private setFavoriteBtnBackground()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 436
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDirPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mFavoriteBtn:Landroid/widget/Button;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 439
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mCollectallBtn:Landroid/widget/Button;

    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 440
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    if-ne v0, v4, :cond_0

    .line 441
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 457
    :cond_1
    :goto_0
    return-void

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDirPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mFavoriteBtn:Landroid/widget/Button;

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 448
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mCollectallBtn:Landroid/widget/Button;

    const v1, 0x7f060045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 449
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    if-ne v0, v4, :cond_3

    .line 450
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 453
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    if-eq v0, v4, :cond_1

    .line 454
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setFromBtnVisibility()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 271
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setMusicFromBtnText()V

    .line 272
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDirPathText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method private setMusicClassifyBtnText()V
    .locals 2

    .prologue
    .line 460
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicClassify:I

    packed-switch v0, :pswitch_data_0

    .line 471
    :goto_0
    return-void

    .line 462
    :pswitch_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicClassifyBtn:Landroid/widget/Button;

    const v1, 0x7f060042

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 465
    :pswitch_1
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicClassifyBtn:Landroid/widget/Button;

    const v1, 0x7f060043

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 468
    :pswitch_2
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicClassifyBtn:Landroid/widget/Button;

    const v1, 0x7f060044

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setMusicFrom(I)V
    .locals 2
    .param p1, "from"    # I

    .prologue
    .line 749
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mFromChooseLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 750
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicFrom:I

    if-ne v0, p1, :cond_0

    .line 757
    :goto_0
    return-void

    .line 753
    :cond_0
    iput p1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicFrom:I

    .line 754
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicFrom:I

    invoke-static {p0, v0}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicFromChoose(Landroid/content/Context;I)V

    .line 755
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setMusicFromBtnText()V

    .line 756
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setCurrectMusicList(Z)V

    goto :goto_0
.end method

.method private setMusicFromBtnText()V
    .locals 4

    .prologue
    .line 217
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromString:[I

    iget v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicFrom:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromText:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 225
    return-void

    .line 219
    :cond_0
    iget v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicFrom:I

    if-ne v1, v0, :cond_1

    .line 220
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromText:[Landroid/widget/TextView;

    iget v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicFrom:I

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromText:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method private setMusicTypeBtnTextAndList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 228
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    invoke-static {p0, v0}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicType(Landroid/content/Context;I)V

    .line 229
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchLetterText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchLetterText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->clearTypeBtnTextColor()V

    .line 233
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailAdapter:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

    invoke-direct {v0, p0}, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailAdapter:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeText:[Landroid/widget/TextView;

    iget v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeString:[I

    iget v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    invoke-direct {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isNeedPageBtnVisible(I)V

    .line 239
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailAdapter:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    packed-switch v0, :pswitch_data_0

    .line 266
    :goto_0
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setCurrectData()V

    .line 267
    return-void

    .line 244
    :pswitch_0
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setFromBtnVisibility()V

    .line 245
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 249
    :pswitch_1
    iput v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicFrom:I

    .line 250
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailBtn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 255
    :pswitch_2
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setFromBtnVisibility()V

    .line 256
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailBtn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 260
    :pswitch_3
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setFromBtnVisibility()V

    .line 261
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setNowListSelectPosition(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 837
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 838
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->setSelectPosition(I)V

    .line 839
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->getData()Ljava/util/List;

    move-result-object v1

    .line 840
    .local v1, "nowList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 848
    .end local v0    # "i":I
    .end local v1    # "nowList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    :cond_0
    :goto_1
    return-void

    .line 841
    .restart local v0    # "i":I
    .restart local v1    # "nowList":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 842
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    invoke-virtual {v2, v0}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->setSelectPosition(I)V

    .line 843
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 840
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 865
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 866
    .local v2, "searchText":Ljava/lang/String;
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 867
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 868
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTotalMusicInfoList()Ljava/util/List;

    move-result-object v0

    .line 869
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 875
    .end local v0    # "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    .end local v1    # "i":I
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setCurrectMusicList(Z)V

    .line 876
    return-void

    .line 870
    .restart local v0    # "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 871
    iget-object v4, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSetList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 855
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f030001

    return v0
.end method

.method protected initOnClickListener()V
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;

    invoke-direct {v0, p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$4;-><init>(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)V

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mCollectOnClickListener:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter$CollectOnClickListener;

    .line 369
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 881
    invoke-super {p0, p1, p2, p3}, Lcom/acloud/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 882
    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    .line 883
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicFrom:I

    if-eqz v0, :cond_0

    .line 884
    iput v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicFrom:I

    .line 885
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromString:[I

    iget v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicFrom:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 887
    :cond_0
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    if-eqz v0, :cond_2

    .line 888
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    if-ne v0, v4, :cond_1

    .line 889
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDirPathText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 892
    :cond_1
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->clearTypeBtnTextColor()V

    .line 893
    iput v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    .line 894
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeText:[Landroid/widget/TextView;

    iget v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 895
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeString:[I

    iget v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 896
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailBtn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 897
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 899
    :cond_2
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    if-eqz v0, :cond_3

    .line 900
    iput-boolean v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    .line 901
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isFavorite:Z

    invoke-static {p0, v0}, Lcom/acloud/stub/utils/MusicConfigData;->setIsFavorite(Landroid/content/Context;Z)V

    .line 902
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mFavoriteBtn:Landroid/widget/Button;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 903
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mCollectallBtn:Landroid/widget/Button;

    const v1, 0x7f060045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 904
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 906
    :cond_3
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicClassify:I

    if-eqz v0, :cond_4

    .line 907
    iput v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicClassify:I

    .line 908
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicClassify:I

    invoke-static {p0, v0}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicClassify(Landroid/content/Context;I)V

    .line 909
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicClassifyBtn:Landroid/widget/Button;

    const v1, 0x7f060042

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 911
    :cond_4
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 912
    const/16 v0, 0x2a

    if-ne p2, v0, :cond_6

    .line 913
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchLetterText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    iput-boolean v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isSearch:Z

    .line 915
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSetList:Ljava/util/List;

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTotalMusicInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 921
    :goto_0
    invoke-direct {p0, v3}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setCurrectMusicList(Z)V

    .line 923
    :cond_5
    return-void

    .line 917
    :cond_6
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchLetterText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    int-to-char v2, p2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iput-boolean v4, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isSearch:Z

    .line 919
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSetList:Ljava/util/List;

    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getMusicListFromInitial(C)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 583
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 585
    .local v0, "id":I
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 586
    const v2, 0x7f0b0047

    if-eq v0, v2, :cond_1

    const v2, 0x7f0b0048

    if-eq v0, v2, :cond_1

    .line 587
    const v2, 0x7f0b0049

    if-eq v0, v2, :cond_1

    const v2, 0x7f0b004a

    if-eq v0, v2, :cond_1

    .line 588
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f0b004c

    if-eq v0, v2, :cond_2

    const v2, 0x7f0b004e

    if-eq v0, v2, :cond_2

    .line 594
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 598
    :cond_2
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mFromChooseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const v2, 0x7f0b0052

    if-eq v0, v2, :cond_3

    .line 599
    const v2, 0x7f0b0053

    if-eq v0, v2, :cond_3

    const v2, 0x7f0b0054

    if-eq v0, v2, :cond_3

    .line 600
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mFromChooseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 604
    :cond_3
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 616
    :sswitch_0
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 606
    :sswitch_1
    invoke-static {}, Lcom/acloud/AppManager;->getAppManager()Lcom/acloud/AppManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/acloud/AppManager;->gotoHome(Landroid/content/Context;)V

    goto :goto_0

    .line 609
    :sswitch_2
    invoke-static {}, Lcom/acloud/AppManager;->getAppManager()Lcom/acloud/AppManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/acloud/AppManager;->finishActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 612
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 613
    .local v1, "searchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v4}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->startActivityForResultSafety(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 619
    .end local v1    # "searchIntent":Landroid/content/Intent;
    :sswitch_4
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 622
    :sswitch_5
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->changeMusicFavorite()V

    goto :goto_0

    .line 625
    :sswitch_6
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->changeMusicClassify()V

    goto :goto_0

    .line 628
    :sswitch_7
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->selectAll()V

    goto :goto_0

    .line 631
    :sswitch_8
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mFromChooseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 634
    :sswitch_9
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 635
    iget v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isSearch:Z

    if-eqz v2, :cond_0

    .line 638
    :cond_4
    iput v4, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    .line 639
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setMusicTypeBtnTextAndList()V

    goto/16 :goto_0

    .line 642
    :sswitch_a
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 643
    iget v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    if-eq v2, v5, :cond_0

    .line 646
    iput v5, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    .line 647
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setMusicTypeBtnTextAndList()V

    goto/16 :goto_0

    .line 650
    :sswitch_b
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 651
    iget v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    if-eq v2, v6, :cond_0

    .line 654
    iput v6, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    .line 655
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setMusicTypeBtnTextAndList()V

    goto/16 :goto_0

    .line 658
    :sswitch_c
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 659
    iget v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    if-eq v2, v7, :cond_0

    .line 662
    iput v7, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    .line 663
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setMusicTypeBtnTextAndList()V

    goto/16 :goto_0

    .line 666
    :sswitch_d
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->onPrevPage()V

    goto/16 :goto_0

    .line 669
    :sswitch_e
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->onNextPage()V

    goto/16 :goto_0

    .line 672
    :sswitch_f
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    neg-int v3, v3

    const/16 v4, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 675
    :sswitch_10
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    const/16 v4, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 678
    :sswitch_11
    invoke-direct {p0, v4}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setMusicFrom(I)V

    goto/16 :goto_0

    .line 681
    :sswitch_12
    invoke-direct {p0, v5}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setMusicFrom(I)V

    goto/16 :goto_0

    .line 684
    :sswitch_13
    invoke-direct {p0, v6}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setMusicFrom(I)V

    goto/16 :goto_0

    .line 604
    :sswitch_data_0
    .sparse-switch
        0x7f0b0037 -> :sswitch_0
        0x7f0b0039 -> :sswitch_4
        0x7f0b003b -> :sswitch_d
        0x7f0b003c -> :sswitch_e
        0x7f0b0040 -> :sswitch_3
        0x7f0b0042 -> :sswitch_7
        0x7f0b0044 -> :sswitch_5
        0x7f0b0045 -> :sswitch_6
        0x7f0b0047 -> :sswitch_9
        0x7f0b0048 -> :sswitch_a
        0x7f0b0049 -> :sswitch_b
        0x7f0b004a -> :sswitch_c
        0x7f0b004c -> :sswitch_f
        0x7f0b004e -> :sswitch_10
        0x7f0b0050 -> :sswitch_8
        0x7f0b0052 -> :sswitch_11
        0x7f0b0053 -> :sswitch_12
        0x7f0b0054 -> :sswitch_13
        0x7f0b007d -> :sswitch_1
        0x7f0b007f -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 559
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->pThis:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    .line 560
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mRefreshReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 561
    iget v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmorySearchText(Landroid/content/Context;Ljava/lang/String;)V

    .line 564
    :cond_0
    invoke-super {p0}, Lcom/acloud/activity/BaseActivity;->onDestroy()V

    .line 565
    return-void
.end method

.method public onItemClickMusic(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/16 v3, 0x8

    .line 798
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 799
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 817
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 803
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 806
    :cond_1
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mFromChooseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 807
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mFromChooseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 810
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_music_main_play"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 811
    .local v1, "playIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "clickPath":Ljava/lang/String;
    const-string v2, "music_click_path"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->sendBroadcast(Landroid/content/Intent;)V

    .line 814
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    invoke-virtual {v3}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->setCurPlayInfoList(Ljava/util/List;)V

    .line 816
    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListAdapter:Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;

    invoke-virtual {v2, p1}, Lcom/acloud/stub/localmusic/ui/adapter/MusicListAdapter;->setSelectPosition(I)V

    goto :goto_0
.end method

.method public onNextPage()V
    .locals 3

    .prologue
    .line 700
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 701
    return-void
.end method

.method public onPrevPage()V
    .locals 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 694
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 861
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v1, 0x8

    .line 569
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mFromChooseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mFromChooseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 578
    :cond_2
    invoke-super {p0, p1}, Lcom/acloud/activity/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onViewCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-static {}, Lcom/acloud/AppManager;->getAppManager()Lcom/acloud/AppManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/acloud/AppManager;->addActivity(Landroid/app/Activity;)V

    .line 109
    sput-object p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->pThis:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    .line 111
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTotalMusicInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getTotalMusicInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    const v1, 0x7f060050

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->showToast(I)V

    .line 114
    invoke-static {}, Lcom/acloud/AppManager;->getAppManager()Lcom/acloud/AppManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/acloud/AppManager;->finishActivity(Landroid/app/Activity;)V

    .line 188
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->initOnClickListener()V

    .line 119
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->initConfigData()V

    .line 120
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->initReceive()V

    .line 121
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->initDirList()V

    .line 123
    const v1, 0x7f0b007d

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v1, 0x7f0b0040

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const/4 v1, 0x4

    new-array v2, v1, [Landroid/widget/TextView;

    const v1, 0x7f0b0047

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 128
    const v1, 0x7f0b0048

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v4

    .line 129
    const v1, 0x7f0b0049

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v5

    .line 130
    const v1, 0x7f0b004a

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v6

    .line 127
    iput-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeText:[Landroid/widget/TextView;

    .line 131
    new-array v2, v6, [Landroid/widget/TextView;

    const v1, 0x7f0b0052

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 132
    const v1, 0x7f0b0053

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v4

    .line 133
    const v1, 0x7f0b0054

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v5

    .line 131
    iput-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromText:[Landroid/widget/TextView;

    .line 135
    const v1, 0x7f0b0046

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeLayout:Landroid/widget/LinearLayout;

    .line 136
    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mFromChooseLayout:Landroid/widget/LinearLayout;

    .line 138
    const v1, 0x7f0b0037

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeBtn:Landroid/widget/Button;

    .line 139
    const v1, 0x7f0b0039

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailBtn:Landroid/widget/Button;

    .line 140
    const v1, 0x7f0b0044

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mFavoriteBtn:Landroid/widget/Button;

    .line 141
    const v1, 0x7f0b0045

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicClassifyBtn:Landroid/widget/Button;

    .line 142
    const v1, 0x7f0b0042

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mCollectallBtn:Landroid/widget/Button;

    .line 143
    const v1, 0x7f0b004c

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailUpPageBtn:Landroid/widget/Button;

    .line 144
    const v1, 0x7f0b004e

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailDownPageBtn:Landroid/widget/Button;

    .line 145
    const v1, 0x7f0b0050

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromBtn:Landroid/widget/Button;

    .line 147
    const v1, 0x7f0b003b

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mUpPageBtn:Landroid/widget/Button;

    .line 148
    const v1, 0x7f0b003c

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDownPageBtn:Landroid/widget/Button;

    .line 150
    const v1, 0x7f0b003f

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchEditor:Landroid/widget/EditText;

    .line 151
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    const v1, 0x7f0b0043

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListView:Landroid/widget/ListView;

    .line 154
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 155
    const v1, 0x7f0b004d

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailListView:Landroid/widget/ListView;

    .line 156
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    const v1, 0x7f0b004b

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailLayout:Landroid/widget/LinearLayout;

    .line 160
    const v1, 0x7f0b003e

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mTotalCountText:Landroid/widget/TextView;

    .line 161
    const v1, 0x7f0b0041

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mSearchLetterText:Landroid/widget/TextView;

    .line 162
    const v1, 0x7f0b0038

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDirPathText:Landroid/widget/TextView;

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeText:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 168
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromText:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 172
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mFavoriteBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicClassifyBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mCollectallBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mUpPageBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDownPageBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailUpPageBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mDetailDownPageBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->musicType:I

    invoke-direct {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->isNeedPageBtnVisible(I)V

    .line 184
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setMusicFromBtnText()V

    .line 185
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setMusicTypeBtnTextAndList()V

    .line 186
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setMusicClassifyBtnText()V

    .line 187
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->setFavoriteBtnBackground()V

    goto/16 :goto_0

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicTypeText:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->mMusicFromText:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
