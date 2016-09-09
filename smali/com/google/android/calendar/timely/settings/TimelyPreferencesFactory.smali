.class public Lcom/google/android/calendar/timely/settings/TimelyPreferencesFactory;
.super Ljava/lang/Object;
.source "TimelyPreferencesFactory.java"

# interfaces
.implements Lcom/android/calendar/timely/settings/PreferencesFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultDurationInputAspect(Landroid/preference/PreferenceActivity;)Lcom/android/calendar/timely/settings/data/InputAspectFragment;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/calendar/timely/settings/TimelyPreferencesFactory$1;-><init>(Lcom/google/android/calendar/timely/settings/TimelyPreferencesFactory;Landroid/preference/PreferenceActivity;)V

    return-object v0
.end method
