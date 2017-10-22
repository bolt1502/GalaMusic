.class Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask$1;
.super Ljava/lang/Object;
.source "LocalPlayerInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->queryMusicInfo()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/acloud/stub/localmusic/data/MusicInfoData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;


# direct methods
.method constructor <init>(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask$1;->this$1:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/acloud/stub/localmusic/data/MusicInfoData;Lcom/acloud/stub/localmusic/data/MusicInfoData;)I
    .locals 3
    .param p1, "lhs"    # Lcom/acloud/stub/localmusic/data/MusicInfoData;
    .param p2, "rhs"    # Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask$1;->this$1:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;

    # getter for: Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->this$0:Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;->access$3(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask;)Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPinyin()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->compareInitial(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1, v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->access$6(Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    check-cast p2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {p0, p1, p2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$InitMusicInfoTask$1;->compare(Lcom/acloud/stub/localmusic/data/MusicInfoData;Lcom/acloud/stub/localmusic/data/MusicInfoData;)I

    move-result v0

    return v0
.end method
