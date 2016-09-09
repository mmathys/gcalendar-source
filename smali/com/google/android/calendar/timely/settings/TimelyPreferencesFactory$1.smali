.class Lcom/google/android/calendar/timely/settings/TimelyPreferencesFactory$1;
.super Ljava/lang/Object;
.source "TimelyPreferencesFactory.java"

# interfaces
.implements Lcom/android/calendar/timely/settings/data/InputAspectFragment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/settings/TimelyPreferencesFactory;->getDefaultDurationInputAspect(Landroid/preference/PreferenceActivity;)Lcom/android/calendar/timely/settings/data/InputAspectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/TimelyPreferencesFactory;

.field final synthetic val$preferenceActivity:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/settings/TimelyPreferencesFactory;Landroid/preference/PreferenceActivity;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesFactory$1;->this$0:Lcom/google/android/calendar/timely/settings/TimelyPreferencesFactory;

    iput-object p2, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesFactory$1;->val$preferenceActivity:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/android/calendar/timely/settings/DurationPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentTitleRes()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/android/calendar/R$string;->menu_duration_preferences:I

    return v0
.end method

.method public getPreferenceActivity()Landroid/preference/PreferenceActivity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesFactory$1;->val$preferenceActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method
