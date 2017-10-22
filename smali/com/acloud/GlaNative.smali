.class public Lcom/acloud/GlaNative;
.super Ljava/lang/Object;
.source "GlaNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/GlaNative$AppInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/acloud/GlaNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/acloud/GlaNative;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/GlaNative;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execSystemCmd(Ljava/lang/String;)V
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 132
    .local v1, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "runtime":Ljava/lang/Runtime;
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/acloud/GlaNative;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstallAppInfo(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/GlaNative$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v0, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/GlaNative$AppInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 245
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 257
    return-object v0

    .line 246
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 247
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v4, Lcom/acloud/GlaNative$AppInfo;

    invoke-direct {v4}, Lcom/acloud/GlaNative$AppInfo;-><init>()V

    .line 248
    .local v4, "tmpInfo":Lcom/acloud/GlaNative$AppInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/acloud/GlaNative$AppInfo;->appName:Ljava/lang/String;

    .line 249
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/acloud/GlaNative$AppInfo;->packageName:Ljava/lang/String;

    .line 250
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v5, v4, Lcom/acloud/GlaNative$AppInfo;->versionName:Ljava/lang/String;

    .line 251
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v5, v4, Lcom/acloud/GlaNative$AppInfo;->versionCode:I

    .line 252
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lcom/acloud/GlaNative$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 253
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getRunningProcess(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/GlaNative$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 187
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 189
    .local v6, "run":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/GlaNative$AppInfo;>;"
    invoke-static {p0}, Lcom/acloud/GlaNative;->getInstallAppInfo(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 192
    .local v2, "installList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/GlaNative$AppInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 212
    return-object v3

    .line 192
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 194
    .local v5, "ra":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v9, "system"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 195
    iget-object v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v9, "com.Android.phone"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 199
    const/4 v4, 0x0

    .line 200
    .local v4, "pr":Lcom/acloud/GlaNative$AppInfo;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 206
    :goto_1
    if-eqz v4, :cond_0

    .line 209
    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v8, v4, Lcom/acloud/GlaNative$AppInfo;->pid:I

    .line 210
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/GlaNative$AppInfo;

    .line 201
    .local v1, "info":Lcom/acloud/GlaNative$AppInfo;
    iget-object v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v10, v1, Lcom/acloud/GlaNative$AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 202
    move-object v4, v1

    .line 203
    goto :goto_1
.end method

.method public static getRunningTaskPackageName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pos"    # I

    .prologue
    .line 153
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 154
    .local v0, "mActivityManager":Landroid/app/ActivityManager;
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, "rti":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 156
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 158
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getStreamMaxVolume(Landroid/content/Context;)I
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 278
    if-nez p0, :cond_0

    .line 279
    const/16 v1, 0x28

    .line 283
    :goto_0
    return v1

    .line 281
    :cond_0
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 282
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 283
    .local v1, "max":I
    goto :goto_0
.end method

.method public static getTopPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 145
    .local v0, "mActivityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 146
    .local v1, "rti":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 149
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static installApk(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .param p0, "apkFilePath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "chmod 777 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/acloud/GlaNative;->execSystemCmd(Ljava/lang/String;)V

    .line 38
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "paths":[Ljava/lang/String;
    const-string v3, ""

    .line 40
    .local v3, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_0

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "chmod 777 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/acloud/GlaNative;->execSystemCmd(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    :try_start_0
    invoke-static {p1, p0}, Lcom/acloud/utils/Utilities;->installApk(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    const/4 v5, 0x1

    .line 55
    :goto_1
    return v5

    .line 41
    .end local v0    # "apkFile":Ljava/io/File;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .restart local v0    # "apkFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 115
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    const/4 v1, 0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isRunningProcess(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v2

    .line 226
    :cond_1
    invoke-static {p0}, Lcom/acloud/GlaNative;->getRunningProcess(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 227
    .local v1, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/GlaNative$AppInfo;>;"
    invoke-static {v1}, Lcom/acloud/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/GlaNative$AppInfo;

    .line 229
    .local v0, "appInfo":Lcom/acloud/GlaNative$AppInfo;
    iget-object v4, v0, Lcom/acloud/GlaNative$AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static quiesceInstall(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "apkFilePath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    sput-object p0, Lcom/acloud/GlaNative;->mContext:Landroid/content/Context;

    .line 270
    return-void
.end method

.method public static startAPP(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appPackageName"    # Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static uninstallApk(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method public static upgradeApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkFilePath"    # Ljava/lang/String;

    .prologue
    .line 78
    return-void
.end method
