.class public Lcom/android/calendar/timely/settings/BirthdayPreferences;
.super Landroid/preference/PreferenceFragment;
.source "BirthdayPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/BirthdayPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/BirthdayPreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method
