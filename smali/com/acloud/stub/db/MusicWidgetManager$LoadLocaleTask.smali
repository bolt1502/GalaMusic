.class Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;
.super Landroid/os/AsyncTask;
.source "MusicWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/db/MusicWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadLocaleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/db/MusicWidgetManager;

.field private token:I


# direct methods
.method constructor <init>(Lcom/acloud/stub/db/MusicWidgetManager;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 680
    if-nez p1, :cond_0

    .line 695
    :goto_0
    return-object v2

    .line 682
    :cond_0
    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->token:I

    .line 683
    const/4 v11, 0x0

    .line 684
    .local v11, "cursor":Landroid/database/Cursor;
    const-string v0, "MusicWidgetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "doInBackground: token:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->token:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->token:I

    if-nez v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mDatabaseHelper:Lcom/acloud/stub/db/DatabaseHelper;
    invoke-static {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->access$5(Lcom/acloud/stub/db/MusicWidgetManager;)Lcom/acloud/stub/db/DatabaseHelper;

    move-result-object v0

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_CURPLAY_INFO:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/db/MusicWidgetManager;->access$6()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/acloud/stub/db/DatabaseHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 694
    :goto_1
    const-string v0, "MusicWidgetManager"

    const-string v1, "doInBackground: finish:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v11

    .line 695
    goto :goto_0

    .line 689
    :cond_1
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_ID:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/db/MusicWidgetManager;->access$7()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    const/4 v0, 0x1

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/db/MusicWidgetManager;->access$8()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    .line 690
    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/db/MusicWidgetManager;->access$9()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 691
    .local v5, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mDatabaseHelper:Lcom/acloud/stub/db/DatabaseHelper;
    invoke-static {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->access$5(Lcom/acloud/stub/db/MusicWidgetManager;)Lcom/acloud/stub/db/DatabaseHelper;

    move-result-object v3

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_PLAY_LIST:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/db/MusicWidgetManager;->access$10()Ljava/lang/String;

    move-result-object v4

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Lcom/acloud/stub/db/DatabaseHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->doInBackground([Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 700
    const-string v0, "MusicWidgetManager"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :try_start_0
    iget v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->token:I

    if-nez v0, :cond_2

    .line 703
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;
    invoke-static {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->access$1(Lcom/acloud/stub/db/MusicWidgetManager;)Lcom/acloud/stub/db/PlayList;

    move-result-object v0

    .line 705
    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_MUSICID:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/db/MusicWidgetManager;->access$2()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 704
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/acloud/stub/db/PlayList;->setCurPlayId(I)V

    .line 706
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;
    invoke-static {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->access$1(Lcom/acloud/stub/db/MusicWidgetManager;)Lcom/acloud/stub/db/PlayList;

    move-result-object v0

    .line 707
    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_PROGRESS:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/db/MusicWidgetManager;->access$3()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 706
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/acloud/stub/db/PlayList;->setCurProgess(I)V

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # invokes: Lcom/acloud/stub/db/MusicWidgetManager;->queryLocalePlayList()V
    invoke-static {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->access$4(Lcom/acloud/stub/db/MusicWidgetManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    :goto_0
    if-eqz p1, :cond_1

    .line 716
    const-string v0, "QQ"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", close cursor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 720
    :cond_1
    const-string v0, "MusicWidgetManager"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void

    .line 712
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v0, p1}, Lcom/acloud/stub/db/MusicWidgetManager;->updatePlayList(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 714
    :catchall_0
    move-exception v0

    .line 715
    if-eqz p1, :cond_3

    .line 716
    const-string v1, "QQ"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "token == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->token:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", close cursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 719
    :cond_3
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/acloud/stub/db/MusicWidgetManager$LoadLocaleTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
