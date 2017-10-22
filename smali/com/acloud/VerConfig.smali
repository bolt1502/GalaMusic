.class public Lcom/acloud/VerConfig;
.super Ljava/lang/Object;
.source "VerConfig.java"


# static fields
.field public static final AC3561_VER:I = 0x2

.field public static final AC8217_VER:I = 0x1

.field public static final HSAE_VER:I = 0x0

.field private static final VER_AC3561_NAME:Ljava/lang/String; = "ac3561"

.field private static final VER_AC8217_NAME:Ljava/lang/String; = "ac8217"

.field private static final VER_DONGFANGQICHENG_NAME:Ljava/lang/String; = "dongfangqicheng"

.field private static final VER_HSAE_NAME:Ljava/lang/String; = "HSAE"

.field private static mCurVerNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, -0x1

    sput v0, Lcom/acloud/VerConfig;->mCurVerNumber:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/acloud/base/R$string;->client_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurVer(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v1, -0x1

    sget v2, Lcom/acloud/VerConfig;->mCurVerNumber:I

    if-ne v1, v2, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/acloud/base/R$string;->ver_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "verName":Ljava/lang/String;
    const-string v1, "ac8217"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    const/4 v1, 0x1

    sput v1, Lcom/acloud/VerConfig;->mCurVerNumber:I

    .line 38
    .end local v0    # "verName":Ljava/lang/String;
    :cond_0
    :goto_0
    sget v1, Lcom/acloud/VerConfig;->mCurVerNumber:I

    return v1

    .line 31
    .restart local v0    # "verName":Ljava/lang/String;
    :cond_1
    const-string v1, "HSAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    const/4 v1, 0x0

    sput v1, Lcom/acloud/VerConfig;->mCurVerNumber:I

    goto :goto_0

    .line 33
    :cond_2
    const-string v1, "ac3561"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const/4 v1, 0x2

    sput v1, Lcom/acloud/VerConfig;->mCurVerNumber:I

    goto :goto_0
.end method

.method public static isAc3561(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x2

    invoke-static {p0}, Lcom/acloud/VerConfig;->getCurVer(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAc8217(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-static {p0}, Lcom/acloud/VerConfig;->getCurVer(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDongfangqicheng(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-string v0, "dongfangqicheng"

    invoke-static {p0}, Lcom/acloud/VerConfig;->getClientName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isHSAE(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/acloud/VerConfig;->getCurVer(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
