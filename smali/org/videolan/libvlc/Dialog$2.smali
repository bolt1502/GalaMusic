.class Lorg/videolan/libvlc/Dialog$2;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/Dialog;->displayLoginFromNative(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/videolan/libvlc/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dialog:Lorg/videolan/libvlc/Dialog$LoginDialog;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/Dialog$LoginDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/Dialog$2;->val$dialog:Lorg/videolan/libvlc/Dialog$LoginDialog;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 410
    # getter for: Lorg/videolan/libvlc/Dialog;->sCallbacks:Lorg/videolan/libvlc/Dialog$Callbacks;
    invoke-static {}, Lorg/videolan/libvlc/Dialog;->access$0()Lorg/videolan/libvlc/Dialog$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    # getter for: Lorg/videolan/libvlc/Dialog;->sCallbacks:Lorg/videolan/libvlc/Dialog$Callbacks;
    invoke-static {}, Lorg/videolan/libvlc/Dialog;->access$0()Lorg/videolan/libvlc/Dialog$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/libvlc/Dialog$2;->val$dialog:Lorg/videolan/libvlc/Dialog$LoginDialog;

    invoke-interface {v0, v1}, Lorg/videolan/libvlc/Dialog$Callbacks;->onDisplay(Lorg/videolan/libvlc/Dialog$LoginDialog;)V

    .line 412
    :cond_0
    return-void
.end method
