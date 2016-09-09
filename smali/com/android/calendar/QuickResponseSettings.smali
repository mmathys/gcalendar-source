.class public Lcom/android/calendar/QuickResponseSettings;
.super Landroid/preference/PreferenceFragment;
.source "QuickResponseSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field mEditTextPrefs:[Landroid/preference/EditTextPreference;

.field mResponses:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/calendar/QuickResponseSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/QuickResponseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 46
    sget v1, Lcom/android/calendar/R$string;->quick_response_settings_title:I

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/calendar/QuickResponseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getQuickResponses(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    .line 53
    iget-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 55
    iget-object v4, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v2, v4, v0

    .line 56
    new-instance v6, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/calendar/QuickResponseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 57
    sget v7, Lcom/android/calendar/R$string;->quick_response_settings_edit_title:I

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 58
    invoke-virtual {v6, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v6, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v6, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    iget-object v7, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    add-int/lit8 v2, v1, 0x1

    aput-object v6, v7, v1

    .line 62
    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 65
    :cond_0
    const-string v1, "QuickResponseSettings"

    const-string v2, "No responses found"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 67
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/calendar/QuickResponseSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 68
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 82
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/preference/EditTextPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v2

    if-nez v2, :cond_2

    .line 84
    iget-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    aput-object p2, v1, v0

    .line 86
    iget-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/android/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/calendar/QuickResponseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "preferences_quick_responses"

    iget-object v2, p0, Lcom/android/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    :cond_0
    const/4 v1, 0x1

    .line 93
    :cond_1
    return v1

    .line 82
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/android/calendar/QuickResponseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    .line 74
    invoke-virtual {v0}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->isMultiPane()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    sget v1, Lcom/android/calendar/R$string;->quick_response_settings_title:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->setTitle(I)V

    .line 77
    :cond_0
    return-void
.end method
