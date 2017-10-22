.class public Lcom/acloud/hanzi/HanziToPinyinUtil;
.super Ljava/lang/Object;
.source "HanziToPinyinUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPinYin(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {}, Lcom/acloud/hanzi/HanziToPinyin;->getInstance()Lcom/acloud/hanzi/HanziToPinyin;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/acloud/hanzi/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 18
    .local v2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/hanzi/HanziToPinyin$Token;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 20
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/hanzi/HanziToPinyin$Token;

    .line 21
    .local v1, "token":Lcom/acloud/hanzi/HanziToPinyin$Token;
    const/4 v4, 0x2

    iget v5, v1, Lcom/acloud/hanzi/HanziToPinyin$Token;->type:I

    if-ne v4, v5, :cond_2

    .line 22
    iget-object v4, v1, Lcom/acloud/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 24
    :cond_2
    iget-object v4, v1, Lcom/acloud/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getPinYinList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/acloud/hanzi/HanziToPinyin;->getInstance()Lcom/acloud/hanzi/HanziToPinyin;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/acloud/hanzi/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 38
    .local v2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/hanzi/HanziToPinyin$Token;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 48
    :cond_0
    return-object v0

    .line 40
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/hanzi/HanziToPinyin$Token;

    .line 41
    .local v1, "token":Lcom/acloud/hanzi/HanziToPinyin$Token;
    const/4 v4, 0x2

    iget v5, v1, Lcom/acloud/hanzi/HanziToPinyin$Token;->type:I

    if-ne v4, v5, :cond_2

    .line 42
    iget-object v4, v1, Lcom/acloud/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_2
    iget-object v4, v1, Lcom/acloud/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
