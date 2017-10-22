.class public Lcom/acloud/utils/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    .local p0, "this":Lcom/acloud/utils/ListUtils;, "Lcom/acloud/utils/ListUtils<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "b"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 41
    .end local p1    # "b":[Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 38
    .restart local p1    # "b":[Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    goto :goto_0

    .line 39
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, "c":[Ljava/lang/Object;
    const/4 v1, 0x0

    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 41
    goto :goto_0
.end method

.method public static isEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "data"    # Ljava/util/List;

    .prologue
    .line 50
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "datas"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public removeDuplicateWithOrder(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/acloud/utils/ListUtils;, "Lcom/acloud/utils/ListUtils<TT;>;"
    .local p1, "sources":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 27
    return-object v0

    .line 23
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Object;

    .line 24
    .local v1, "s":Ljava/lang/Object;, "TT;"
    invoke-static {v0, v1}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
