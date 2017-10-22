.class public Lcom/acloud/network/http/UpgradeAppManager;
.super Ljava/lang/Object;
.source "UpgradeAppManager.java"

# interfaces
.implements Lcom/acloud/network/downinterface/DownBeginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;,
        Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;
    }
.end annotation


# static fields
.field private static final APP_UPDATE_PATH:Ljava/lang/String; = "/app_cache_path/"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private apkUrl:Ljava/lang/String;

.field httpUtils:Lcom/acloud/network/http/HttpUtils;

.field private isDownloadSuccess:Z

.field private mContext:Landroid/content/Context;

.field private mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;

.field private mUpdateAppTask:Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;

.field private mUpgradeAppCallback:Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;

.field private object:Lorg/json/JSONObject;

.field sdcardPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/acloud/network/http/UpgradeAppManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/acloud/network/http/UpgradeAppManager;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;

    .line 34
    iput-object v1, p0, Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->isDownloadSuccess:Z

    .line 42
    new-instance v0, Lcom/acloud/network/http/HttpUtils;

    invoke-direct {v0}, Lcom/acloud/network/http/HttpUtils;-><init>()V

    iput-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->httpUtils:Lcom/acloud/network/http/HttpUtils;

    .line 44
    invoke-static {}, Lcom/acloud/utils/EnvironmentUtils;->getSDPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->sdcardPath:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/acloud/network/http/UpgradeAppManager;->mUpgradeAppCallback:Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;

    .line 151
    iput-object v1, p0, Lcom/acloud/network/http/UpgradeAppManager;->mUpdateAppTask:Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;

    .line 159
    iput-object p1, p0, Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Lcom/acloud/network/http/UpgradeAppManager;->mUpgradeAppCallback:Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;

    .line 161
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/network/http/UpgradeAppManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/network/http/UpgradeAppManager;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/acloud/network/http/UpgradeAppManager;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/acloud/network/http/UpgradeAppManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/acloud/network/http/UpgradeAppManager;Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/acloud/network/http/UpgradeAppManager;->isDownloadSuccess:Z

    return-void
.end method

.method static synthetic access$2(Lcom/acloud/network/http/UpgradeAppManager;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/acloud/network/http/UpgradeAppManager;->object:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$3(Lcom/acloud/network/http/UpgradeAppManager;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->object:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$4(Lcom/acloud/network/http/UpgradeAppManager;Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/acloud/network/http/UpgradeAppManager;->getAppVer(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/acloud/network/http/UpgradeAppManager;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->isDownloadSuccess:Z

    return v0
.end method

.method static synthetic access$6(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/ui/GalaProgressDialog;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;

    return-object v0
.end method

.method static synthetic access$7(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->mUpgradeAppCallback:Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;

    return-object v0
.end method

.method static synthetic access$8(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->mUpdateAppTask:Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;

    return-object v0
.end method

.method static synthetic access$9(Lcom/acloud/network/http/UpgradeAppManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->apkUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getAppVer(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    const/4 v0, 0x1

    .line 201
    .local v0, "verName":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return v0

    .line 202
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-static {}, Lcom/acloud/utils/EnvironmentUtils;->getSDPath()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "sdPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_0
    return-object v0
.end method


# virtual methods
.method public downBegin()V
    .locals 5

    .prologue
    .line 213
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/acloud/network/http/UpgradeAppManager;->sdcardPath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/app_cache_path/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 218
    :cond_0
    iget-object v3, p0, Lcom/acloud/network/http/UpgradeAppManager;->object:Lorg/json/JSONObject;

    const-string v4, "url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/acloud/network/http/UpgradeAppManager;->apkUrl:Ljava/lang/String;

    .line 219
    iget-object v3, p0, Lcom/acloud/network/http/UpgradeAppManager;->apkUrl:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/acloud/network/http/UpgradeAppManager;->apkUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/acloud/network/http/UpgradeAppManager$2;

    invoke-direct {v4, p0}, Lcom/acloud/network/http/UpgradeAppManager$2;-><init>(Lcom/acloud/network/http/UpgradeAppManager;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 284
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public downCancel()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->httpUtils:Lcom/acloud/network/http/HttpUtils;

    invoke-virtual {v0}, Lcom/acloud/network/http/HttpUtils;->cancelDownload()V

    .line 295
    return-void
.end method

.method public popUpgradeDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Lcom/acloud/network/ui/GalaProgressDialog;

    iget-object v1, p0, Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/acloud/network/ui/GalaProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;

    .line 170
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;

    invoke-virtual {v0, p1}, Lcom/acloud/network/ui/GalaProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;

    invoke-virtual {v0, p2}, Lcom/acloud/network/ui/GalaProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/acloud/network/ui/GalaProgressDialog;->setMax(I)V

    .line 173
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;

    iget-object v1, p0, Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/acloud/network/R$string;->cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v2, Lcom/acloud/network/http/UpgradeAppManager$1;

    invoke-direct {v2, p0}, Lcom/acloud/network/http/UpgradeAppManager$1;-><init>(Lcom/acloud/network/http/UpgradeAppManager;)V

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/acloud/network/ui/GalaProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 182
    return-void
.end method

.method public requestNewAppVer(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/acloud/network/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;-><init>(Lcom/acloud/network/http/UpgradeAppManager;Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;)V

    iput-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->mUpdateAppTask:Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;

    .line 191
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager;->mUpdateAppTask:Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    :cond_0
    return-void
.end method
