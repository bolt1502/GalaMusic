.class Lcom/acloud/stub/db/MusicWidgetManager$QueryLocalHandler;
.super Lcom/acloud/stub/db/AsyncQueryLocalHandler;
.source "MusicWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/db/MusicWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryLocalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/db/MusicWidgetManager;


# direct methods
.method public constructor <init>(Lcom/acloud/stub/db/MusicWidgetManager;Lcom/acloud/stub/db/DatabaseHelper;)V
    .locals 0
    .param p2, "db"    # Lcom/acloud/stub/db/DatabaseHelper;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/acloud/stub/db/MusicWidgetManager$QueryLocalHandler;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    .line 638
    invoke-direct {p0, p2}, Lcom/acloud/stub/db/AsyncQueryLocalHandler;-><init>(Lcom/acloud/stub/db/DatabaseHelper;)V

    .line 639
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 644
    if-nez p1, :cond_2

    .line 645
    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$QueryLocalHandler;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;
    invoke-static {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->access$1(Lcom/acloud/stub/db/MusicWidgetManager;)Lcom/acloud/stub/db/PlayList;

    move-result-object v0

    .line 647
    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_MUSICID:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/db/MusicWidgetManager;->access$2()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 646
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/acloud/stub/db/PlayList;->setCurPlayId(I)V

    .line 648
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$QueryLocalHandler;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mPlayList:Lcom/acloud/stub/db/PlayList;
    invoke-static {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->access$1(Lcom/acloud/stub/db/MusicWidgetManager;)Lcom/acloud/stub/db/PlayList;

    move-result-object v0

    .line 649
    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->TABLE_COLUMN_PROGRESS:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/db/MusicWidgetManager;->access$3()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 648
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/acloud/stub/db/PlayList;->setCurProgess(I)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$QueryLocalHandler;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # invokes: Lcom/acloud/stub/db/MusicWidgetManager;->queryLocalePlayList()V
    invoke-static {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->access$4(Lcom/acloud/stub/db/MusicWidgetManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :goto_0
    if-eqz p3, :cond_1

    .line 658
    const-string v0, "QQ"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", close cursor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_1
    return-void

    .line 654
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$QueryLocalHandler;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v0, p3}, Lcom/acloud/stub/db/MusicWidgetManager;->updatePlayList(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 656
    :catchall_0
    move-exception v0

    .line 657
    if-eqz p3, :cond_3

    .line 658
    const-string v1, "QQ"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "token == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", close cursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 661
    :cond_3
    throw v0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 667
    return-void
.end method
