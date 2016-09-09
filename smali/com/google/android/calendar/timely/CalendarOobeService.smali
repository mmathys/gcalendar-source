.class public Lcom/google/android/calendar/timely/CalendarOobeService;
.super Landroid/app/Service;
.source "CalendarOobeService.java"


# instance fields
.field private final mBinder:Lcom/google/android/calendar/ICalendarOobeService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    new-instance v0, Lcom/google/android/calendar/timely/CalendarOobeService$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/timely/CalendarOobeService$1;-><init>(Lcom/google/android/calendar/timely/CalendarOobeService;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/CalendarOobeService;->mBinder:Lcom/google/android/calendar/ICalendarOobeService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/calendar/timely/CalendarOobeService;->mBinder:Lcom/google/android/calendar/ICalendarOobeService$Stub;

    return-object v0
.end method
