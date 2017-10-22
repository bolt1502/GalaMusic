.class public Lcom/acloud/utils/LanguageUitls;
.super Ljava/lang/Object;
.source "LanguageUitls.java"


# static fields
.field private static final ACTION_GALA_NAME:Ljava/lang/String; = "ACTION_GALA_NAME_LANGUAGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheLanuageType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/acloud/utils/LanguageUitls;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, "mPreferences":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const-string v1, ""

    if-eq p1, v1, :cond_1

    .line 51
    :cond_0
    const-string v1, "zh_CN"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLanguageType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 26
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 27
    return-object v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ACTION_GALA_NAME_LANGUAGE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public static setCacheLanuageType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/acloud/utils/LanguageUitls;->getLanguageType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "language":Ljava/lang/String;
    invoke-static {p0}, Lcom/acloud/utils/LanguageUitls;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 38
    .local v1, "mPreferences":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    :cond_1
    return-void
.end method
