.class Lcom/acloud/network/http/HttpTask$StHttpContent;
.super Ljava/lang/Object;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/network/http/HttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StHttpContent"
.end annotation


# instance fields
.field public result:Ljava/lang/String;

.field final synthetic this$0:Lcom/acloud/network/http/HttpTask;

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/acloud/network/http/HttpTask;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/acloud/network/http/HttpTask$StHttpContent;->this$0:Lcom/acloud/network/http/HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/acloud/network/http/HttpTask$StHttpContent;->url:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/acloud/network/http/HttpTask$StHttpContent;->result:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/acloud/network/http/HttpTask;Lcom/acloud/network/http/HttpTask$StHttpContent;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/acloud/network/http/HttpTask$StHttpContent;-><init>(Lcom/acloud/network/http/HttpTask;)V

    return-void
.end method
