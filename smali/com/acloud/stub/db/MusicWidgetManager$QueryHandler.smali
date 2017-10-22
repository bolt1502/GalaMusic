.class Lcom/acloud/stub/db/MusicWidgetManager$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MusicWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/db/MusicWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/db/MusicWidgetManager;


# direct methods
.method public constructor <init>(Lcom/acloud/stub/db/MusicWidgetManager;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/acloud/stub/db/MusicWidgetManager$QueryHandler;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    .line 611
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 612
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$QueryHandler;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    # getter for: Lcom/acloud/stub/db/MusicWidgetManager;->mEvent:I
    invoke-static {v0}, Lcom/acloud/stub/db/MusicWidgetManager;->access$0(Lcom/acloud/stub/db/MusicWidgetManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 626
    :goto_0
    :pswitch_0
    return-void

    .line 618
    :pswitch_1
    iget-object v0, p0, Lcom/acloud/stub/db/MusicWidgetManager$QueryHandler;->this$0:Lcom/acloud/stub/db/MusicWidgetManager;

    invoke-virtual {v0, p3}, Lcom/acloud/stub/db/MusicWidgetManager;->updatePlayList(Landroid/database/Cursor;)V

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
