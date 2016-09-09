.class public Lcom/android/calendar/newapi/screen/HostDialog;
.super Lcom/android/calendar/event/DetailsDialogFragment;
.source "HostDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/calendar/event/DetailsDialogFragment;-><init>()V

    return-void
.end method

.method public static showWithChildFragment(Landroid/app/FragmentManager;Lcom/android/calendar/newapi/screen/HostedFragment;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/calendar/newapi/screen/HostDialog;->showWithChildFragment(Landroid/app/FragmentManager;Lcom/android/calendar/newapi/screen/HostedFragment;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static showWithChildFragment(Landroid/app/FragmentManager;Lcom/android/calendar/newapi/screen/HostedFragment;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/android/calendar/newapi/screen/HostDialog;

    invoke-direct {v0}, Lcom/android/calendar/newapi/screen/HostDialog;-><init>()V

    .line 25
    const-string v1, "HostDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/calendar/newapi/screen/HostDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 28
    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/HostDialog;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->fragment_container:I

    .line 30
    invoke-virtual {v0, v1, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 32
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/HostDialog;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/HostDialog;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public getLoadingBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/HostDialog;->getTallBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v0

    return-object v0
.end method

.method public getShortBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/HostDialog;->getTallBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v0

    return-object v0
.end method

.method public getTallBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/HostDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$bool;->show_event_edit_full_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->FullDocked:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 84
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->BottomDockedMatched:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    goto :goto_0
.end method

.method public getTroubleshootInfoBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/android/calendar/newapi/screen/HostDialog$1;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/HostDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/newapi/screen/HostDialog$1;-><init>(Lcom/android/calendar/newapi/screen/HostDialog;Landroid/content/Context;)V

    .line 61
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 46
    sget v0, Lcom/android/calendar/R$layout;->fragment_newapi_host_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogBackPressed()V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/HostDialog;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->fragment_container:I

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/screen/HostedFragment;

    .line 101
    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/HostedFragment;->onBackButtonPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/HostDialog;->dismiss()V

    .line 104
    :cond_0
    return-void
.end method

.method protected onTouchOutside()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method
