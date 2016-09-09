.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$BirthdayLoader;
.super Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;
.source "TimelyEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BirthdayLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTimelineBirthday:Lcom/android/calendar/timely/TimelineBirthday;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;-><init>(Landroid/content/Context;)V

    .line 205
    iput-object p2, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$BirthdayLoader;->mTimelineBirthday:Lcom/android/calendar/timely/TimelineBirthday;

    .line 206
    return-void
.end method


# virtual methods
.method public loadInBackground()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$BirthdayLoader;->mTimelineBirthday:Lcom/android/calendar/timely/TimelineBirthday;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineBirthday;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getBirthdayManager()Lcom/android/calendar/BirthdayManagerInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$BirthdayLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$BirthdayLoader;->mTimelineBirthday:Lcom/android/calendar/timely/TimelineBirthday;

    invoke-interface {v0, v1, v2}, Lcom/android/calendar/BirthdayManagerInterface;->initBirthdayItem(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$BirthdayLoader;->mTimelineBirthday:Lcom/android/calendar/timely/TimelineBirthday;

    return-object v0
.end method
