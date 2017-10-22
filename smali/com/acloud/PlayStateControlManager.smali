.class public Lcom/acloud/PlayStateControlManager;
.super Ljava/lang/Object;
.source "PlayStateControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/PlayStateControlManager$MountedStateInterface;,
        Lcom/acloud/PlayStateControlManager$PlayStateInterface;,
        Lcom/acloud/PlayStateControlManager$SeekStateInterface;,
        Lcom/acloud/PlayStateControlManager$VoiceControlInterface;
    }
.end annotation


# static fields
.field public static final KEY_EXTRA_MAINUI:Ljava/lang/String; = "extras"

.field public static final NORMAL:I = 0x3

.field public static final PAUSE:I = 0x1

.field public static final PLAY:I = 0x0

.field public static final STOP:I = 0x2

.field private static pThis:Lcom/acloud/PlayStateControlManager;


# instance fields
.field private mAppLevel:I

.field private mContext:Landroid/content/Context;

.field private mFileBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMountedStateInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/PlayStateControlManager$MountedStateInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayStateInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/PlayStateControlManager$PlayStateInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mRecvPlayStateInterface:Landroid/content/BroadcastReceiver;

.field private mSeekStateInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/PlayStateControlManager$SeekStateInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceControlInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/PlayStateControlManager$VoiceControlInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceControlReceiver:Landroid/content/BroadcastReceiver;

.field private m_curPlayState:I

.field private m_isBackoff:Z

.field private m_isFlameout:Z

.field private m_isInBtCall:Z

.field private m_isInCall:Z

.field private m_isLockScreen:Z

.field private m_isRecvWheelControl:Z

.field private m_isRegisterVoiceControlBroadcast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/PlayStateControlManager;->pThis:Lcom/acloud/PlayStateControlManager;

    .line 119
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/PlayStateControlManager;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/PlayStateControlManager;->mMountedStateInterfaces:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/PlayStateControlManager;->mVoiceControlInterfaces:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/PlayStateControlManager;->mSeekStateInterfaces:Ljava/util/List;

    .line 135
    iput-boolean v1, p0, Lcom/acloud/PlayStateControlManager;->m_isRegisterVoiceControlBroadcast:Z

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/PlayStateControlManager;->m_isRecvWheelControl:Z

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/PlayStateControlManager;->mAppLevel:I

    .line 165
    new-instance v0, Lcom/acloud/PlayStateControlManager$1;

    invoke-direct {v0, p0}, Lcom/acloud/PlayStateControlManager$1;-><init>(Lcom/acloud/PlayStateControlManager;)V

    iput-object v0, p0, Lcom/acloud/PlayStateControlManager;->mRecvPlayStateInterface:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance v0, Lcom/acloud/PlayStateControlManager$2;

    invoke-direct {v0, p0}, Lcom/acloud/PlayStateControlManager$2;-><init>(Lcom/acloud/PlayStateControlManager;)V

    iput-object v0, p0, Lcom/acloud/PlayStateControlManager;->mFileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 441
    new-instance v0, Lcom/acloud/PlayStateControlManager$3;

    invoke-direct {v0, p0}, Lcom/acloud/PlayStateControlManager$3;-><init>(Lcom/acloud/PlayStateControlManager;)V

    iput-object v0, p0, Lcom/acloud/PlayStateControlManager;->mVoiceControlReceiver:Landroid/content/BroadcastReceiver;

    .line 619
    iput-boolean v1, p0, Lcom/acloud/PlayStateControlManager;->m_isInBtCall:Z

    iput-boolean v1, p0, Lcom/acloud/PlayStateControlManager;->m_isInCall:Z

    iput-boolean v1, p0, Lcom/acloud/PlayStateControlManager;->m_isBackoff:Z

    iput-boolean v1, p0, Lcom/acloud/PlayStateControlManager;->m_isLockScreen:Z

    iput-boolean v1, p0, Lcom/acloud/PlayStateControlManager;->m_isFlameout:Z

    .line 621
    const/4 v0, 0x3

    iput v0, p0, Lcom/acloud/PlayStateControlManager;->m_curPlayState:I

    .line 622
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/PlayStateControlManager;)Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/acloud/PlayStateControlManager;->m_isFlameout:Z

    return v0
.end method

.method static synthetic access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/acloud/PlayStateControlManager;->mSeekStateInterfaces:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11(Lcom/acloud/PlayStateControlManager;)Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/acloud/PlayStateControlManager;->m_isBackoff:Z

    return v0
.end method

.method static synthetic access$12(Lcom/acloud/PlayStateControlManager;)Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/acloud/PlayStateControlManager;->m_isLockScreen:Z

    return v0
.end method

.method static synthetic access$13(Lcom/acloud/PlayStateControlManager;)I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/acloud/PlayStateControlManager;->m_curPlayState:I

    return v0
.end method

.method static synthetic access$14(Lcom/acloud/PlayStateControlManager;I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/acloud/PlayStateControlManager;->m_curPlayState:I

    return-void
.end method

.method static synthetic access$15(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/acloud/PlayStateControlManager;->mMountedStateInterfaces:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/acloud/PlayStateControlManager;->mVoiceControlInterfaces:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/acloud/PlayStateControlManager;Z)V
    .locals 0

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/acloud/PlayStateControlManager;->m_isLockScreen:Z

    return-void
.end method

.method static synthetic access$3(Lcom/acloud/PlayStateControlManager;Z)V
    .locals 0

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/acloud/PlayStateControlManager;->m_isFlameout:Z

    return-void
.end method

.method static synthetic access$4(Lcom/acloud/PlayStateControlManager;Z)V
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/acloud/PlayStateControlManager;->m_isInCall:Z

    return-void
.end method

.method static synthetic access$5(Lcom/acloud/PlayStateControlManager;Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/acloud/PlayStateControlManager;->m_isBackoff:Z

    return-void
.end method

.method static synthetic access$6(Lcom/acloud/PlayStateControlManager;)Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/acloud/PlayStateControlManager;->m_isInBtCall:Z

    return v0
.end method

.method static synthetic access$7(Lcom/acloud/PlayStateControlManager;Z)V
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/acloud/PlayStateControlManager;->m_isInBtCall:Z

    return-void
.end method

.method static synthetic access$8(Lcom/acloud/PlayStateControlManager;)Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/acloud/PlayStateControlManager;->m_isInCall:Z

    return v0
.end method

.method static synthetic access$9(Lcom/acloud/PlayStateControlManager;)Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/acloud/PlayStateControlManager;->m_isRecvWheelControl:Z

    return v0
.end method

.method public static getInstance()Lcom/acloud/PlayStateControlManager;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/acloud/PlayStateControlManager;->pThis:Lcom/acloud/PlayStateControlManager;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/acloud/PlayStateControlManager;

    invoke-direct {v0}, Lcom/acloud/PlayStateControlManager;-><init>()V

    sput-object v0, Lcom/acloud/PlayStateControlManager;->pThis:Lcom/acloud/PlayStateControlManager;

    .line 144
    :cond_0
    sget-object v0, Lcom/acloud/PlayStateControlManager;->pThis:Lcom/acloud/PlayStateControlManager;

    return-object v0
.end method

.method public static removeInstance()V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/acloud/PlayStateControlManager;->pThis:Lcom/acloud/PlayStateControlManager;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/acloud/PlayStateControlManager;->pThis:Lcom/acloud/PlayStateControlManager;

    invoke-direct {v0}, Lcom/acloud/PlayStateControlManager;->unregisterReceiver()V

    .line 154
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/PlayStateControlManager;->pThis:Lcom/acloud/PlayStateControlManager;

    .line 155
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/acloud/PlayStateControlManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 627
    iget-object v0, p0, Lcom/acloud/PlayStateControlManager;->mMountedStateInterfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 628
    iget-object v0, p0, Lcom/acloud/PlayStateControlManager;->mVoiceControlInterfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 629
    iget-object v0, p0, Lcom/acloud/PlayStateControlManager;->mSeekStateInterfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 631
    iget-boolean v0, p0, Lcom/acloud/PlayStateControlManager;->m_isRegisterVoiceControlBroadcast:Z

    if-eqz v0, :cond_0

    .line 632
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/PlayStateControlManager;->m_isRegisterVoiceControlBroadcast:Z

    .line 633
    iget-object v0, p0, Lcom/acloud/PlayStateControlManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/acloud/PlayStateControlManager;->mVoiceControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/acloud/PlayStateControlManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/acloud/PlayStateControlManager;->mRecvPlayStateInterface:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 636
    iget-object v0, p0, Lcom/acloud/PlayStateControlManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/acloud/PlayStateControlManager;->mFileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/PlayStateControlManager;->mContext:Landroid/content/Context;

    .line 639
    :cond_1
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/acloud/PlayStateControlManager$PlayStateInterface;Lcom/acloud/PlayStateControlManager$MountedStateInterface;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateInterface"    # Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    .param p3, "mountedStateInterface"    # Lcom/acloud/PlayStateControlManager$MountedStateInterface;

    .prologue
    .line 507
    if-eqz p2, :cond_0

    .line 508
    iget-object v3, p0, Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_0
    if-eqz p3, :cond_1

    .line 511
    iget-object v3, p0, Lcom/acloud/PlayStateControlManager;->mMountedStateInterfaces:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_1
    iget-object v3, p0, Lcom/acloud/PlayStateControlManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 574
    :goto_0
    return-void

    .line 516
    :cond_2
    iput-object p1, p0, Lcom/acloud/PlayStateControlManager;->mContext:Landroid/content/Context;

    .line 518
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 519
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "xy.android.lock.screen"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    const-string v3, "xy.android.unlock.screen"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string v3, "xy.android.acc.on"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v3, "xy.android.acc.off"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string v3, "xy.android.avin.come"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    const-string v3, "xy.android.avin.leave"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v3, "xy.android.forceplay"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v3, "xy.android.forcepause"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v3, "xy.android.rightavin.come"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v3, "xy.android.rightavin.leave"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    const-string v3, "xy.xbtheadset.incallscreen"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    const-string v3, "xy.xbtheadset.outcallscreen"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    const-string v3, "xy.xbtheadset.init"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v3, "xy.xbtheadset.ready"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string v3, "xy.xbtheadset.connecting"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    const-string v3, "xy.xbtheadset.connected"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    const-string v3, "xy.xbtheadset.outgoing"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    const-string v3, "xy.xbtheadset.incoming"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    const-string v3, "xy.xbtheadset.ongoing"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    const-string v3, "xy.xbtheadset.musicon"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    const-string v3, "xy.xbtheadset.musicoff"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v3, "xy.android.previousmedia"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    const-string v3, "xy.android.nextmedia"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v3, "xy.android.playpause"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v3, "xy.android.seek_next"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v3, "xy.android.seek_prev"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    const-string v3, "com.acloud.intent.android.MAINUI_UPDATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    const-string v3, "xy.voice.play"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    const-string v3, "xy.voice.pause"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, Lcom/acloud/PlayStateControlManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/acloud/PlayStateControlManager;->mRecvPlayStateInterface:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 564
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 565
    .local v0, "fileFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 567
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 568
    iget-object v3, p0, Lcom/acloud/PlayStateControlManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/acloud/PlayStateControlManager;->mFileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 570
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 571
    .local v2, "scanFilter":Landroid/content/IntentFilter;
    const-string v3, "xy.gala.scanstart"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 572
    const-string v3, "xy.gala.scanfinished"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 573
    iget-object v3, p0, Lcom/acloud/PlayStateControlManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/acloud/PlayStateControlManager;->mFileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public initSeekControlInterface(Lcom/acloud/PlayStateControlManager$SeekStateInterface;)V
    .locals 1
    .param p1, "callback"    # Lcom/acloud/PlayStateControlManager$SeekStateInterface;

    .prologue
    .line 613
    if-eqz p1, :cond_0

    .line 614
    iget-object v0, p0, Lcom/acloud/PlayStateControlManager;->mSeekStateInterfaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_0
    return-void
.end method

.method public initVoiceControlInterface(Lcom/acloud/PlayStateControlManager$VoiceControlInterface;)Z
    .locals 4
    .param p1, "callback"    # Lcom/acloud/PlayStateControlManager$VoiceControlInterface;

    .prologue
    const/4 v1, 0x1

    .line 582
    if-eqz p1, :cond_0

    .line 583
    iget-object v2, p0, Lcom/acloud/PlayStateControlManager;->mVoiceControlInterfaces:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_0
    iget-boolean v2, p0, Lcom/acloud/PlayStateControlManager;->m_isRegisterVoiceControlBroadcast:Z

    if-nez v2, :cond_2

    .line 586
    iput-boolean v1, p0, Lcom/acloud/PlayStateControlManager;->m_isRegisterVoiceControlBroadcast:Z

    .line 587
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 588
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "xy.voice.control"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    const/4 v2, -0x1

    iget v3, p0, Lcom/acloud/PlayStateControlManager;->mAppLevel:I

    if-eq v2, v3, :cond_1

    .line 590
    iget v2, p0, Lcom/acloud/PlayStateControlManager;->mAppLevel:I

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 592
    :cond_1
    iget-object v2, p0, Lcom/acloud/PlayStateControlManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 593
    iget-object v2, p0, Lcom/acloud/PlayStateControlManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/acloud/PlayStateControlManager;->mVoiceControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 597
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRecvMainUi()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/acloud/PlayStateControlManager;->m_isFlameout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/acloud/PlayStateControlManager;->m_isLockScreen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/acloud/PlayStateControlManager;->m_isBackoff:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/acloud/PlayStateControlManager;->m_isInCall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/acloud/PlayStateControlManager;->m_isInBtCall:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAppLevel(I)V
    .locals 0
    .param p1, "nLevel"    # I

    .prologue
    .line 605
    iput p1, p0, Lcom/acloud/PlayStateControlManager;->mAppLevel:I

    .line 606
    return-void
.end method

.method public setRecvWheelControl(Z)V
    .locals 0
    .param p1, "isRecvWheelControl"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/acloud/PlayStateControlManager;->m_isRecvWheelControl:Z

    .line 163
    return-void
.end method
