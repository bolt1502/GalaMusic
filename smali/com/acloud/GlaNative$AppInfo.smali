.class public Lcom/acloud/GlaNative$AppInfo;
.super Ljava/lang/Object;
.source "GlaNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/GlaNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field public appIcon:Landroid/graphics/drawable/Drawable;

.field public appName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public pid:I

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/acloud/GlaNative$AppInfo;->appName:Ljava/lang/String;

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/acloud/GlaNative$AppInfo;->packageName:Ljava/lang/String;

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/acloud/GlaNative$AppInfo;->versionName:Ljava/lang/String;

    .line 168
    iput v1, p0, Lcom/acloud/GlaNative$AppInfo;->versionCode:I

    .line 169
    iput v1, p0, Lcom/acloud/GlaNative$AppInfo;->pid:I

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/GlaNative$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 164
    return-void
.end method


# virtual methods
.method public print()V
    .locals 3

    .prologue
    .line 173
    const-string v0, "app"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/acloud/GlaNative$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/GlaNative$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v0, "app"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/acloud/GlaNative$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " versionName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/GlaNative$AppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v0, "app"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/acloud/GlaNative$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " versionCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/acloud/GlaNative$AppInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method
