.class Lcom/acloud/stub/db/MusicWidgetManager$1;
.super Ljava/lang/Object;
.source "MusicWidgetManager.java"

# interfaces
.implements Lcom/acloud/stub/localmusic/data/LocalPlayerInfo$LocalPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/db/MusicWidgetManager;->asyncQueryPlayList(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/db/MusicWidgetManager;

.field private final synthetic val$flag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/acloud/stub/db/MusicWidgetManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    iput-object p2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->val$flag:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateMusicList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 134
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getCurPlayInfoList()Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/acloud/stub/localmusic/data/MusicInfoData;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->val$flag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    const-string v3, "init"

    invoke-virtual {v2, v3}, Lcom/acloud/stub/db/MusicWidgetManager;->getCurPlayMusic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "curPlayPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v0}, Lcom/acloud/stub/db/MusicWidgetManager;->sendToPlay(Ljava/lang/String;ZLjava/lang/String;)V

    .line 169
    .end local v0    # "curPlayPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->val$flag:Ljava/lang/String;

    const-string v3, "flag_play"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mWidgetCallBack:Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;
    invoke-static {v2}, Lcom/acloud/stub/db/MusicWidgetManager;->access$11(Lcom/acloud/stub/db/MusicWidgetManager;)Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-static {v2, v5}, Lcom/acloud/stub/db/MusicWidgetManager;->access$12(Lcom/acloud/stub/db/MusicWidgetManager;I)V

    .line 144
    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I
    invoke-static {v2}, Lcom/acloud/stub/db/MusicWidgetManager;->access$13(Lcom/acloud/stub/db/MusicWidgetManager;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/acloud/stub/db/MusicWidgetManager;->playCurMusic(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/acloud/stub/db/MusicWidgetManager;->access$14(Lcom/acloud/stub/db/MusicWidgetManager;Ljava/lang/String;)V

    .line 145
    sput v4, Lcom/acloud/stub/db/MusicWidgetManager;->statues:I

    goto :goto_0

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->val$flag:Ljava/lang/String;

    const-string v3, "flag_next"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mWidgetCallBack:Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;
    invoke-static {v2}, Lcom/acloud/stub/db/MusicWidgetManager;->access$11(Lcom/acloud/stub/db/MusicWidgetManager;)Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/acloud/stub/db/MusicWidgetManager;->access$15()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/acloud/stub/utils/MusicConfigData;->getMusicMemmoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/acloud/stub/db/MusicWidgetManager;->access$16(Lcom/acloud/stub/db/MusicWidgetManager;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayMusicPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/acloud/stub/db/MusicWidgetManager;->access$17(Lcom/acloud/stub/db/MusicWidgetManager;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/acloud/stub/db/MusicWidgetManager;->getCurPlayerMusicIndex(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/acloud/stub/db/MusicWidgetManager;->access$18(Lcom/acloud/stub/db/MusicWidgetManager;Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I
    invoke-static {v2}, Lcom/acloud/stub/db/MusicWidgetManager;->access$13(Lcom/acloud/stub/db/MusicWidgetManager;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/acloud/stub/db/MusicWidgetManager;->access$12(Lcom/acloud/stub/db/MusicWidgetManager;I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v3, v2, :cond_3

    .line 152
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-static {v2, v5}, Lcom/acloud/stub/db/MusicWidgetManager;->access$12(Lcom/acloud/stub/db/MusicWidgetManager;I)V

    .line 154
    :cond_3
    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I
    invoke-static {v2}, Lcom/acloud/stub/db/MusicWidgetManager;->access$13(Lcom/acloud/stub/db/MusicWidgetManager;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/acloud/stub/db/MusicWidgetManager;->playCurMusic(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/acloud/stub/db/MusicWidgetManager;->access$14(Lcom/acloud/stub/db/MusicWidgetManager;Ljava/lang/String;)V

    .line 155
    sput v4, Lcom/acloud/stub/db/MusicWidgetManager;->statues:I

    goto/16 :goto_0

    .line 157
    :cond_4
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->val$flag:Ljava/lang/String;

    const-string v3, "flag_prev"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mWidgetCallBack:Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;
    invoke-static {v2}, Lcom/acloud/stub/db/MusicWidgetManager;->access$11(Lcom/acloud/stub/db/MusicWidgetManager;)Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/acloud/stub/db/MusicWidgetManager;->access$15()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/acloud/stub/utils/MusicConfigData;->getMusicMemmoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/acloud/stub/db/MusicWidgetManager;->access$16(Lcom/acloud/stub/db/MusicWidgetManager;Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayMusicPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/acloud/stub/db/MusicWidgetManager;->access$17(Lcom/acloud/stub/db/MusicWidgetManager;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/acloud/stub/db/MusicWidgetManager;->getCurPlayerMusicIndex(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/acloud/stub/db/MusicWidgetManager;->access$18(Lcom/acloud/stub/db/MusicWidgetManager;Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I
    invoke-static {v2}, Lcom/acloud/stub/db/MusicWidgetManager;->access$13(Lcom/acloud/stub/db/MusicWidgetManager;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/acloud/stub/db/MusicWidgetManager;->access$12(Lcom/acloud/stub/db/MusicWidgetManager;I)V

    if-gez v3, :cond_5

    .line 162
    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/acloud/stub/db/MusicWidgetManager;->access$12(Lcom/acloud/stub/db/MusicWidgetManager;I)V

    .line 164
    :cond_5
    iget-object v3, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    iget-object v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$1;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mCurPlayIndex:I
    invoke-static {v2}, Lcom/acloud/stub/db/MusicWidgetManager;->access$13(Lcom/acloud/stub/db/MusicWidgetManager;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getPath()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/acloud/stub/db/MusicWidgetManager;->playCurMusic(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/acloud/stub/db/MusicWidgetManager;->access$14(Lcom/acloud/stub/db/MusicWidgetManager;Ljava/lang/String;)V

    .line 165
    sput v4, Lcom/acloud/stub/db/MusicWidgetManager;->statues:I

    goto/16 :goto_0
.end method
