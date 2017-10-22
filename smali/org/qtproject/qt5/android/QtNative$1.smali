.class Lorg/qtproject/qt5/android/QtNative$1;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/QtNative;->registerClipboardManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/qtproject/qt5/android/QtNative$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 405
    # getter for: Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->access$0()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-static {v0}, Lorg/qtproject/qt5/android/QtNative;->access$1(Landroid/text/ClipboardManager;)V

    .line 406
    iget-object v0, p0, Lorg/qtproject/qt5/android/QtNative$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 407
    return-void
.end method
