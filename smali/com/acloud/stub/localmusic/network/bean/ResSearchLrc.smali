.class public Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;
.super Ljava/lang/Object;
.source "ResSearchLrc.java"


# instance fields
.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/network/bean/ResMusic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/acloud/stub/localmusic/network/bean/ResMusic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;->result:Ljava/util/List;

    return-object v0
.end method
