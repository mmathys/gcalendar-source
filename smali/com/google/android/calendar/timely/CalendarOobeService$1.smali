.class Lcom/google/android/calendar/timely/CalendarOobeService$1;
.super Lcom/google/android/calendar/ICalendarOobeService$Stub;
.source "CalendarOobeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/CalendarOobeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/CalendarOobeService;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/CalendarOobeService;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/android/calendar/timely/CalendarOobeService$1;->this$0:Lcom/google/android/calendar/timely/CalendarOobeService;

    invoke-direct {p0}, Lcom/google/android/calendar/ICalendarOobeService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isOobeCompleted()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/calendar/timely/CalendarOobeService$1;->this$0:Lcom/google/android/calendar/timely/CalendarOobeService;

    .line 20
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->hasAnyAccountSeenOOBE(Landroid/content/SharedPreferences;)Z

    move-result v0

    return v0
.end method
