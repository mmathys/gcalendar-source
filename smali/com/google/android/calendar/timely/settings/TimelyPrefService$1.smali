.class Lcom/google/android/calendar/timely/settings/TimelyPrefService$1;
.super Landroid/database/ContentObserver;
.source "TimelyPrefService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/TimelyPrefService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/TimelyPrefService;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/settings/TimelyPrefService;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService$1;->this$0:Lcom/google/android/calendar/timely/settings/TimelyPrefService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPrefService$1;->this$0:Lcom/google/android/calendar/timely/settings/TimelyPrefService;

    # invokes: Lcom/google/android/calendar/timely/settings/TimelyPrefService;->readPrefAsync()V
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/TimelyPrefService;->access$000(Lcom/google/android/calendar/timely/settings/TimelyPrefService;)V

    .line 43
    :cond_0
    return-void
.end method
