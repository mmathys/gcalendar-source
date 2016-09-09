.class public Lcom/android/timezonepicker/TimeZonePickerDialog;
.super Landroid/app/DialogFragment;
.source "TimeZonePickerDialog.java"

# interfaces
.implements Lcom/android/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mHasCachedResults:Z

.field private mTimeZoneSetListener:Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;

.field private mView:Lcom/android/timezonepicker/TimeZonePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/timezonepicker/TimeZonePickerDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/timezonepicker/TimeZonePickerDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/timezonepicker/TimeZonePickerDialog;->mHasCachedResults:Z

    .line 55
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 98
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 99
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 60
    const-wide/16 v4, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/android/timezonepicker/TimeZonePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    const-string v1, "bundle_event_start_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 65
    const-string v1, "bundle_event_time_zone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    :goto_0
    if-eqz p3, :cond_1

    .line 70
    const-string v0, "hide_filter_search"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 72
    :goto_1
    new-instance v0, Lcom/android/timezonepicker/TimeZonePickerView;

    invoke-virtual {p0}, Lcom/android/timezonepicker/TimeZonePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/timezonepicker/TimeZonePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;JLcom/android/timezonepicker/TimeZonePickerView$OnTimeZoneSetListener;Z)V

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerDialog;->mView:Lcom/android/timezonepicker/TimeZonePickerView;

    .line 74
    if-eqz p3, :cond_0

    const-string v0, "has_results"

    invoke-virtual {p3, v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerDialog;->mView:Lcom/android/timezonepicker/TimeZonePickerView;

    const-string v1, "last_filter_type"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "last_filter_string"

    .line 76
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "last_filter_time"

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 75
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/timezonepicker/TimeZonePickerView;->showFilterResults(ILjava/lang/String;I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerDialog;->mView:Lcom/android/timezonepicker/TimeZonePickerView;

    return-object v0

    :cond_1
    move v7, v8

    goto :goto_1

    :cond_2
    move-object v3, v2

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    const-string v1, "has_results"

    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerDialog;->mView:Lcom/android/timezonepicker/TimeZonePickerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerDialog;->mView:Lcom/android/timezonepicker/TimeZonePickerView;

    invoke-virtual {v0}, Lcom/android/timezonepicker/TimeZonePickerView;->hasResults()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerDialog;->mView:Lcom/android/timezonepicker/TimeZonePickerView;

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "last_filter_type"

    iget-object v1, p0, Lcom/android/timezonepicker/TimeZonePickerDialog;->mView:Lcom/android/timezonepicker/TimeZonePickerView;

    invoke-virtual {v1}, Lcom/android/timezonepicker/TimeZonePickerView;->getLastFilterType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v0, "last_filter_string"

    iget-object v1, p0, Lcom/android/timezonepicker/TimeZonePickerDialog;->mView:Lcom/android/timezonepicker/TimeZonePickerView;

    invoke-virtual {v1}, Lcom/android/timezonepicker/TimeZonePickerView;->getLastFilterString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "last_filter_time"

    iget-object v1, p0, Lcom/android/timezonepicker/TimeZonePickerDialog;->mView:Lcom/android/timezonepicker/TimeZonePickerView;

    invoke-virtual {v1}, Lcom/android/timezonepicker/TimeZonePickerView;->getLastFilterTime()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string v0, "hide_filter_search"

    iget-object v1, p0, Lcom/android/timezonepicker/TimeZonePickerDialog;->mView:Lcom/android/timezonepicker/TimeZonePickerView;

    invoke-virtual {v1}, Lcom/android/timezonepicker/TimeZonePickerView;->getHideFilterSearchOnStart()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    :cond_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTimeZoneSet(Lcom/android/timezonepicker/TimeZoneInfo;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerDialog;->mTimeZoneSetListener:Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerDialog;->mTimeZoneSetListener:Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;

    invoke-interface {v0, p1}, Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;->onTimeZoneSet(Lcom/android/timezonepicker/TimeZoneInfo;)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/timezonepicker/TimeZonePickerDialog;->dismiss()V

    .line 108
    return-void
.end method

.method public setOnTimeZoneSetListener(Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/timezonepicker/TimeZonePickerDialog;->mTimeZoneSetListener:Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;

    .line 51
    return-void
.end method
