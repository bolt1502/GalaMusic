.class public Lio/vov/vitamio/Metadata$TimedText;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vov/vitamio/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimedText"
.end annotation


# instance fields
.field private mDuration:I

.field private mText:Ljava/lang/String;

.field private mTime:Ljava/util/Date;

.field final synthetic this$0:Lio/vov/vitamio/Metadata;


# direct methods
.method public constructor <init>(Lio/vov/vitamio/Metadata;Ljava/util/Date;ILjava/lang/String;)V
    .locals 0
    .param p2, "time"    # Ljava/util/Date;
    .param p3, "duration"    # I
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lio/vov/vitamio/Metadata$TimedText;->this$0:Lio/vov/vitamio/Metadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lio/vov/vitamio/Metadata$TimedText;->mTime:Ljava/util/Date;

    .line 113
    iput p3, p0, Lio/vov/vitamio/Metadata$TimedText;->mDuration:I

    .line 114
    iput-object p4, p0, Lio/vov/vitamio/Metadata$TimedText;->mText:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    .local v0, "res":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lio/vov/vitamio/Metadata$TimedText;->mTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/vov/vitamio/Metadata$TimedText;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/vov/vitamio/Metadata$TimedText;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
