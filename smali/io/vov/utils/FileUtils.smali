.class public Lio/vov/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 5
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 65
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 67
    :cond_0
    return-void

    .line 60
    :cond_1
    aget-object v0, v2, v1

    .line 61
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    invoke-static {v0}, Lio/vov/utils/FileUtils;->deleteDir(Ljava/io/File;)V

    .line 63
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getCanonical(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v1, 0x0

    .line 32
    :goto_0
    return-object v1

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0}, Lio/vov/utils/FileUtils;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 55
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x7

    .line 43
    const-string v0, "FileUtils#getPath(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lio/vov/utils/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-static {p0}, Lio/vov/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 47
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
