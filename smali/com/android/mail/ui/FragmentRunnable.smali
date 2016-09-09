.class public abstract Lcom/android/mail/ui/FragmentRunnable;
.super Ljava/lang/Object;
.source "FragmentRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mFragment:Landroid/app/Fragment;

.field private final mOpName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/mail/ui/FragmentRunnable;->mOpName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/android/mail/ui/FragmentRunnable;->mFragment:Landroid/app/Fragment;

    .line 33
    return-void
.end method


# virtual methods
.method public abstract go()V
.end method

.method public run()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/mail/ui/FragmentRunnable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/FragmentRunnable;->go()V

    goto :goto_0
.end method
