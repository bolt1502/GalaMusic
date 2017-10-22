.class public Lcom/acloud/network/utils/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;
    }
.end annotation


# static fields
.field private static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field private static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field private static pThis:Lcom/acloud/network/utils/WifiUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsRegisterBroadcast:Z

.field private mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiStateCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/network/utils/WifiUtils;->pThis:Lcom/acloud/network/utils/WifiUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/network/utils/WifiUtils;->mContext:Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/network/utils/WifiUtils;->mIsRegisterBroadcast:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/network/utils/WifiUtils;->mWifiStateCallback:Ljava/util/List;

    .line 113
    new-instance v0, Lcom/acloud/network/utils/WifiUtils$1;

    invoke-direct {v0, p0}, Lcom/acloud/network/utils/WifiUtils$1;-><init>(Lcom/acloud/network/utils/WifiUtils;)V

    iput-object v0, p0, Lcom/acloud/network/utils/WifiUtils;->mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/network/utils/WifiUtils;)Ljava/util/List;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/acloud/network/utils/WifiUtils;->mWifiStateCallback:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/acloud/network/utils/WifiUtils;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/acloud/network/utils/WifiUtils;->pThis:Lcom/acloud/network/utils/WifiUtils;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/acloud/network/utils/WifiUtils;

    invoke-direct {v0}, Lcom/acloud/network/utils/WifiUtils;-><init>()V

    sput-object v0, Lcom/acloud/network/utils/WifiUtils;->pThis:Lcom/acloud/network/utils/WifiUtils;

    .line 36
    :cond_0
    sget-object v0, Lcom/acloud/network/utils/WifiUtils;->pThis:Lcom/acloud/network/utils/WifiUtils;

    return-object v0
.end method

.method private release()V
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/network/utils/WifiUtils;->mIsRegisterBroadcast:Z

    .line 106
    iget-object v0, p0, Lcom/acloud/network/utils/WifiUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/acloud/network/utils/WifiUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/acloud/network/utils/WifiUtils;->mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/acloud/network/utils/WifiUtils;->mWifiStateCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    return-void
.end method

.method public static removeInstance()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/acloud/network/utils/WifiUtils;->pThis:Lcom/acloud/network/utils/WifiUtils;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/acloud/network/utils/WifiUtils;->pThis:Lcom/acloud/network/utils/WifiUtils;

    invoke-direct {v0}, Lcom/acloud/network/utils/WifiUtils;->release()V

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/network/utils/WifiUtils;->pThis:Lcom/acloud/network/utils/WifiUtils;

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public registerWifiStateCallback(Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;Landroid/content/Context;)V
    .locals 3
    .param p1, "callback"    # Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_0
    iput-object p2, p0, Lcom/acloud/network/utils/WifiUtils;->mContext:Landroid/content/Context;

    .line 60
    if-eqz p1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/acloud/network/utils/WifiUtils;->mWifiStateCallback:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {p2}, Lcom/acloud/network/utils/NetworkUtils;->isOpenWifiAp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    invoke-interface {p1}, Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;->onWifiApOpen()V

    .line 75
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/acloud/network/utils/WifiUtils;->mIsRegisterBroadcast:Z

    if-eqz v1, :cond_4

    .line 82
    :goto_1
    return-void

    .line 66
    :cond_2
    invoke-static {p2}, Lcom/acloud/network/utils/NetworkUtils;->isWifiDataEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    invoke-interface {p1}, Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;->onWifiConnected()V

    goto :goto_0

    .line 71
    :cond_3
    invoke-interface {p1}, Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;->onWifiDisable()V

    goto :goto_0

    .line 76
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/acloud/network/utils/WifiUtils;->mIsRegisterBroadcast:Z

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/acloud/network/utils/WifiUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/acloud/network/utils/WifiUtils;->mWifiBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public unregisterWifiStateCallback(Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/acloud/network/utils/WifiUtils;->mWifiStateCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/acloud/network/utils/WifiUtils;->mWifiStateCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    return-void
.end method
