.class public Lcom/acloud/utils/VerCompare;
.super Ljava/lang/Object;
.source "VerCompare.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "version1"    # Ljava/lang/String;
    .param p1, "version2"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 16
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v6, v8

    .line 48
    :cond_1
    :goto_0
    return v6

    .line 19
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v6, v8

    .line 20
    goto :goto_0

    .line 23
    :cond_3
    const-string v9, "\\."

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "version1Array":[Ljava/lang/String;
    const-string v9, "\\."

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, "version2Array":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 27
    .local v2, "index":I
    array-length v9, v4

    array-length v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 28
    .local v3, "minLen":I
    const/4 v0, 0x0

    .line 29
    .local v0, "diff":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 30
    aget-object v9, v4, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 31
    aget-object v10, v5, v2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 30
    sub-int v0, v9, v10

    if-eqz v0, :cond_5

    .line 34
    :cond_4
    if-nez v0, :cond_9

    .line 35
    move v1, v2

    .local v1, "i":I
    :goto_2
    array-length v9, v4

    if-lt v1, v9, :cond_6

    .line 41
    move v1, v2

    :goto_3
    array-length v6, v5

    if-lt v1, v6, :cond_7

    move v6, v8

    .line 46
    goto :goto_0

    .line 32
    .end local v1    # "i":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 36
    .restart local v1    # "i":I
    :cond_6
    aget-object v9, v4, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 42
    :cond_7
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_8

    move v6, v7

    .line 43
    goto :goto_0

    .line 41
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 48
    .end local v1    # "i":I
    :cond_9
    if-gtz v0, :cond_1

    move v6, v7

    goto :goto_0
.end method
