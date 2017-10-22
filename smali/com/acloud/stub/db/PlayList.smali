.class public Lcom/acloud/stub/db/PlayList;
.super Ljava/lang/Object;
.source "PlayList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayList"


# instance fields
.field private mCurPlayId:I

.field private mCurPlayIndex:I

.field private mCurProgess:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/stub/db/PlayEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    .line 17
    iput v1, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    .line 19
    iput v1, p0, Lcom/acloud/stub/db/PlayList;->mCurProgess:I

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayId:I

    .line 23
    const-string v0, "PlayList"

    const-string v1, "PlayList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/acloud/stub/db/PlayEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/acloud/stub/db/PlayEntry;

    .prologue
    .line 32
    iget v0, p1, Lcom/acloud/stub/db/PlayEntry;->id:I

    iget v1, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayId:I

    if-ne v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    const-string v0, "PlayList"

    const-string v1, "clear() mList.clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    iput v2, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    .line 74
    iput v2, p0, Lcom/acloud/stub/db/PlayList;->mCurProgess:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayId:I

    .line 76
    return-void
.end method

.method public clearlist()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "PlayList"

    const-string v1, "clearlist() mList.clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    return-void
.end method

.method public currentPlayId()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayId:I

    return v0
.end method

.method public currentPlayId(Lcom/acloud/stub/db/PlayEntry;)I
    .locals 1
    .param p1, "entry"    # Lcom/acloud/stub/db/PlayEntry;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurPlayEntry()Lcom/acloud/stub/db/PlayEntry;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    iget-object v1, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/db/PlayEntry;

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurPlayIndex()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    return v0
.end method

.method public getCurProgess()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/acloud/stub/db/PlayList;->mCurProgess:I

    return v0
.end method

.method public getPlayEntry(I)Lcom/acloud/stub/db/PlayEntry;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 143
    iput p1, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    .line 144
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/db/PlayEntry;

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectNext()Lcom/acloud/stub/db/PlayEntry;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    .line 170
    :cond_0
    iget v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    .line 171
    iget v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    iget-object v1, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/db/PlayEntry;

    goto :goto_0
.end method

.method public selectPre()Lcom/acloud/stub/db/PlayEntry;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 156
    :cond_0
    iget v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    .line 157
    iget v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    if-gez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/stub/db/PlayEntry;

    goto :goto_0
.end method

.method public setCurPlayId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayId:I

    .line 106
    return-void
.end method

.method public setCurPlayIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/acloud/stub/db/PlayList;->mCurPlayIndex:I

    .line 98
    return-void
.end method

.method public setCurProgess(I)V
    .locals 0
    .param p1, "progess"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/acloud/stub/db/PlayList;->mCurProgess:I

    .line 114
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/acloud/stub/db/PlayList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
