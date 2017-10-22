.class public Lorg/videolan/libvlc/Dialog$ProgressDialog;
.super Lorg/videolan/libvlc/Dialog$IdDialog;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialog"
.end annotation


# instance fields
.field private final mCancelText:Ljava/lang/String;

.field private final mIndeterminate:Z

.field private mPosition:F


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;ZFLjava/lang/String;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "indeterminate"    # Z
    .param p6, "position"    # F
    .param p7, "cancelText"    # Ljava/lang/String;

    .prologue
    .line 344
    const/4 v4, 0x3

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/videolan/libvlc/Dialog$IdDialog;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    .line 345
    iput-boolean p5, p0, Lorg/videolan/libvlc/Dialog$ProgressDialog;->mIndeterminate:Z

    .line 346
    iput p6, p0, Lorg/videolan/libvlc/Dialog$ProgressDialog;->mPosition:F

    .line 347
    iput-object p7, p0, Lorg/videolan/libvlc/Dialog$ProgressDialog;->mCancelText:Ljava/lang/String;

    .line 348
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;ZFLjava/lang/String;Lorg/videolan/libvlc/Dialog$ProgressDialog;)V
    .locals 1

    .prologue
    .line 342
    invoke-direct/range {p0 .. p7}, Lorg/videolan/libvlc/Dialog$ProgressDialog;-><init>(JLjava/lang/String;Ljava/lang/String;ZFLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lorg/videolan/libvlc/Dialog$ProgressDialog;FLjava/lang/String;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/Dialog$ProgressDialog;->update(FLjava/lang/String;)V

    return-void
.end method

.method private update(FLjava/lang/String;)V
    .locals 0
    .param p1, "position"    # F
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 384
    iput p1, p0, Lorg/videolan/libvlc/Dialog$ProgressDialog;->mPosition:F

    .line 385
    iput-object p2, p0, Lorg/videolan/libvlc/Dialog$ProgressDialog;->mText:Ljava/lang/String;

    .line 386
    return-void
.end method


# virtual methods
.method public bridge synthetic dismiss()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lorg/videolan/libvlc/Dialog$IdDialog;->dismiss()V

    return-void
.end method

.method public getCancelText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/videolan/libvlc/Dialog$ProgressDialog;->mCancelText:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()F
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lorg/videolan/libvlc/Dialog$ProgressDialog;->mPosition:F

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lorg/videolan/libvlc/Dialog$ProgressDialog;->mCancelText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lorg/videolan/libvlc/Dialog$ProgressDialog;->mIndeterminate:Z

    return v0
.end method
