.class public Lcom/acloud/network/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NetworkUtils"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNetState(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, "netstate":Z
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 48
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 51
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_1

    .line 62
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    :goto_1
    return v3

    .line 54
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 56
    const/4 v3, 0x1

    .line 57
    goto :goto_1

    .line 52
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getHostUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const-string v0, "http://www.xygala.com/host.php"

    return-object v0
.end method

.method public static getWifiApState(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 134
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    const/16 v2, 0xe

    .line 136
    .local v2, "state":I
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getWifiApState"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 137
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 142
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    const/16 v4, 0xe

    if-ne v4, v2, :cond_0

    .line 145
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getWifiApEnabledState"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 146
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 152
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return v2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0xe

    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static isMobileDataEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    .line 101
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 102
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 105
    .local v1, "isMobileDataEnable":Z
    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    .line 107
    return v1
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    .line 28
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 30
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 31
    const-string v3, "NetworkUtils"

    const-string v4, "couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 34
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 35
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 36
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 37
    const/4 v3, 0x1

    goto :goto_0

    .line 35
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isNetworkRoaming(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    .line 70
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 71
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 72
    const-string v3, "NetworkUtils"

    const-string v4, "couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 75
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_2

    .line 78
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 77
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 79
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    const-string v3, "NetworkUtils"

    const-string v4, "network is roaming"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v3, 0x1

    goto :goto_1

    .line 83
    :cond_1
    const-string v3, "NetworkUtils"

    const-string v4, "network is not roaming"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    const-string v3, "NetworkUtils"

    const-string v4, "not using mobile network"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isOpenWifiAp(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const/16 v0, 0xd

    invoke-static {p0}, Lcom/acloud/network/utils/NetworkUtils;->getWifiApState(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifiDataEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    .line 119
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 120
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 122
    .local v1, "isWifiDataEnable":Z
    const/4 v2, 0x1

    .line 121
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    .line 123
    return v1
.end method
