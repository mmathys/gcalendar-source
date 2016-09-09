.class Lcom/android/calendar/timely/settings/GeneralPreferences$1;
.super Ljava/lang/Object;
.source "GeneralPreferences.java"

# interfaces
.implements Lcom/android/calendar/timely/settings/data/InputAspectFragment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/settings/GeneralPreferences;->constructFragmentAspects()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/settings/GeneralPreferences;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/settings/GeneralPreferences;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/calendar/timely/settings/GeneralPreferences$1;->this$0:Lcom/android/calendar/timely/settings/GeneralPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    const-class v0, Lcom/android/calendar/QuickResponseSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentTitleRes()I
    .locals 1

    .prologue
    .line 342
    sget v0, Lcom/android/calendar/R$string;->quick_response_settings:I

    return v0
.end method

.method public getPreferenceActivity()Landroid/preference/PreferenceActivity;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/calendar/timely/settings/GeneralPreferences$1;->this$0:Lcom/android/calendar/timely/settings/GeneralPreferences;

    invoke-virtual {v0}, Lcom/android/calendar/timely/settings/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    return-object v0
.end method
