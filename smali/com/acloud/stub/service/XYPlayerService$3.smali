.class Lcom/acloud/stub/service/XYPlayerService$3;
.super Ljava/lang/Object;
.source "XYPlayerService.java"

# interfaces
.implements Lcom/acloud/stub/db/MusicWidgetManager$OnQueryLisenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/service/XYPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/service/XYPlayerService;


# direct methods
.method constructor <init>(Lcom/acloud/stub/service/XYPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 308
    # getter for: Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/service/XYPlayerService;->access$12()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mCurWidgetEvent:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;
    invoke-static {v5}, Lcom/acloud/stub/service/XYPlayerService;->access$13(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$13(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    move-result-object v1

    sget-object v4, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->PLAY:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    if-ne v1, v4, :cond_1

    .line 310
    # getter for: Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/service/XYPlayerService;->access$12()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mWidgetManager:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v5}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/db/MusicWidgetManager;->getPlayList()Lcom/acloud/stub/db/PlayList;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Lcom/acloud/stub/db/PlayList;->getCurPlayEntry()Lcom/acloud/stub/db/PlayEntry;

    move-result-object v0

    .line 314
    .local v0, "entry":Lcom/acloud/stub/db/PlayEntry;
    # getter for: Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/service/XYPlayerService;->access$12()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "entry:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-eqz v0, :cond_0

    .line 316
    # getter for: Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/service/XYPlayerService;->access$12()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "play:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/acloud/stub/db/PlayEntry;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    iget-object v4, v0, Lcom/acloud/stub/db/PlayEntry;->path:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v3, v3}, Lcom/acloud/stub/service/XYPlayerService;->play(Ljava/lang/String;IIZ)V

    .line 319
    # getter for: Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/service/XYPlayerService;->access$12()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mCurWidgetDuration:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetDuration:J
    invoke-static {v4}, Lcom/acloud/stub/service/XYPlayerService;->access$14(Lcom/acloud/stub/service/XYPlayerService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v1, "QQ"

    const-string v3, "onQueryComplete WidgetEvent.PLAY mWidgetManager.setEnable(false)"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/acloud/stub/db/MusicWidgetManager;->setEnable(Z)V

    .line 354
    .end local v0    # "entry":Lcom/acloud/stub/db/PlayEntry;
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$13(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    move-result-object v1

    sget-object v4, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->PREV:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    if-eq v1, v4, :cond_2

    .line 327
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$13(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    move-result-object v1

    sget-object v4, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->NEXT:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    if-ne v1, v4, :cond_4

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCurWidgetEvent:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$13(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    move-result-object v1

    sget-object v4, Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;->PREV:Lcom/acloud/stub/service/XYPlayerService$WidgetEvent;

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Lcom/acloud/stub/db/MusicWidgetManager;->getPlayList()Lcom/acloud/stub/db/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/db/PlayList;->selectPre()Lcom/acloud/stub/db/PlayEntry;

    move-result-object v0

    .line 332
    .restart local v0    # "entry":Lcom/acloud/stub/db/PlayEntry;
    :goto_1
    if-eqz v0, :cond_0

    .line 333
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/db/MusicWidgetManager;->getPlayList()Lcom/acloud/stub/db/PlayList;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/acloud/stub/db/PlayList;->setCurProgess(I)V

    .line 334
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    iget-object v4, v0, Lcom/acloud/stub/db/PlayEntry;->path:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v3, v3}, Lcom/acloud/stub/service/XYPlayerService;->play(Ljava/lang/String;IIZ)V

    .line 335
    const-string v1, "QQ"

    .line 336
    const-string v3, "onQueryComplete WidgetEvent.PREV mWidgetManager.setEnable(false)"

    .line 335
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/acloud/stub/db/MusicWidgetManager;->setEnable(Z)V

    goto :goto_0

    .line 330
    .end local v0    # "entry":Lcom/acloud/stub/db/PlayEntry;
    :cond_3
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lcom/acloud/stub/db/MusicWidgetManager;->getPlayList()Lcom/acloud/stub/db/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/db/PlayList;->selectNext()Lcom/acloud/stub/db/PlayEntry;

    move-result-object v0

    goto :goto_1

    .line 342
    :cond_4
    # getter for: Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/service/XYPlayerService;->access$12()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "Send init broadcaset!!!!!!!!!!!! mWidgetManager:"

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/db/MusicWidgetManager;->sendToInit()V

    .line 346
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/stub/db/MusicWidgetManager;->getPlayList()Lcom/acloud/stub/db/PlayList;

    move-result-object v1

    .line 347
    invoke-virtual {v1}, Lcom/acloud/stub/db/PlayList;->getCurPlayEntry()Lcom/acloud/stub/db/PlayEntry;

    move-result-object v0

    .line 348
    .restart local v0    # "entry":Lcom/acloud/stub/db/PlayEntry;
    # getter for: Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/service/XYPlayerService;->access$12()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "entry:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_6

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-eqz v0, :cond_0

    .line 350
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$3;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mWidgetManager:Lcom/acloud/stub/db/MusicWidgetManager;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$10(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/db/MusicWidgetManager;

    move-result-object v1

    iget-object v2, v0, Lcom/acloud/stub/db/PlayEntry;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/acloud/stub/db/PlayEntry;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/acloud/stub/db/MusicWidgetManager;->sendToPlay(Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "entry":Lcom/acloud/stub/db/PlayEntry;
    :cond_5
    move v1, v3

    .line 343
    goto :goto_2

    .restart local v0    # "entry":Lcom/acloud/stub/db/PlayEntry;
    :cond_6
    move v2, v3

    .line 348
    goto :goto_3
.end method
