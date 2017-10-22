.class public Lcom/acloud/stub/reciver/RemoteControlHelper;
.super Ljava/lang/Object;
.source "RemoteControlHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteControlHelper"

.field private static sHasRemoteControlAPIs:Z

.field private static sRegisterRemoteControlClientMethod:Ljava/lang/reflect/Method;

.field private static sUnregisterRemoteControlClientMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 32
    sput-boolean v2, Lcom/acloud/stub/reciver/RemoteControlHelper;->sHasRemoteControlAPIs:Z

    .line 39
    :try_start_0
    const-class v2, Lcom/acloud/stub/reciver/RemoteControlHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 41
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {v0}, Lcom/acloud/stub/reciver/RemoteControlClientCompat;->getActualRemoteControlClientClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 42
    .local v1, "sRemoteControlClientClass":Ljava/lang/Class;
    const-class v2, Landroid/media/AudioManager;

    .line 43
    const-string v3, "registerRemoteControlClient"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 42
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/acloud/stub/reciver/RemoteControlHelper;->sRegisterRemoteControlClientMethod:Ljava/lang/reflect/Method;

    .line 44
    const-class v2, Landroid/media/AudioManager;

    .line 45
    const-string v3, "unregisterRemoteControlClient"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 44
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/acloud/stub/reciver/RemoteControlHelper;->sUnregisterRemoteControlClientMethod:Ljava/lang/reflect/Method;

    .line 46
    const/4 v2, 0x1

    sput-boolean v2, Lcom/acloud/stub/reciver/RemoteControlHelper;->sHasRemoteControlAPIs:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "sRemoteControlClientClass":Ljava/lang/Class;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v2

    goto :goto_0

    .line 51
    :catch_1
    move-exception v2

    goto :goto_0

    .line 49
    :catch_2
    move-exception v2

    goto :goto_0

    .line 47
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerRemoteControlClient(Landroid/media/AudioManager;Lcom/acloud/stub/reciver/RemoteControlClientCompat;)V
    .locals 5
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "remoteControlClient"    # Lcom/acloud/stub/reciver/RemoteControlClientCompat;

    .prologue
    .line 60
    sget-boolean v1, Lcom/acloud/stub/reciver/RemoteControlHelper;->sHasRemoteControlAPIs:Z

    if-nez v1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    :try_start_0
    sget-object v1, Lcom/acloud/stub/reciver/RemoteControlHelper;->sRegisterRemoteControlClientMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 66
    invoke-virtual {p1}, Lcom/acloud/stub/reciver/RemoteControlClientCompat;->getActualRemoteControlClientObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 65
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RemoteControlHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static unregisterRemoteControlClient(Landroid/media/AudioManager;Lcom/acloud/stub/reciver/RemoteControlClientCompat;)V
    .locals 5
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "remoteControlClient"    # Lcom/acloud/stub/reciver/RemoteControlClientCompat;

    .prologue
    .line 75
    sget-boolean v1, Lcom/acloud/stub/reciver/RemoteControlHelper;->sHasRemoteControlAPIs:Z

    if-nez v1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_0
    :try_start_0
    sget-object v1, Lcom/acloud/stub/reciver/RemoteControlHelper;->sUnregisterRemoteControlClientMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p1}, Lcom/acloud/stub/reciver/RemoteControlClientCompat;->getActualRemoteControlClientObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 80
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RemoteControlHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
