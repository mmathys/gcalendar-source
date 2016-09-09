.class public Lcom/android/calendar/newapi/screen/HostedFragment;
.super Landroid/app/Fragment;
.source "HostedFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 2

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/HostedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "HostDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/screen/HostDialog;

    .line 19
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/HostDialog;->dismiss()V

    .line 22
    :cond_0
    return-void
.end method

.method protected onBackButtonPressed()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected postDismiss()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/calendar/newapi/screen/HostedFragment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/screen/HostedFragment$1;-><init>(Lcom/android/calendar/newapi/screen/HostedFragment;)V

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void
.end method
