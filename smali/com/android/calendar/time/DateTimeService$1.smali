.class Lcom/android/calendar/time/DateTimeService$1;
.super Ljava/lang/Object;
.source "DateTimeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/time/DateTimeService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/time/DateTimeService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/calendar/time/DateTimeService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/calendar/time/DateTimeService$1;->this$0:Lcom/android/calendar/time/DateTimeService;

    iput-object p2, p0, Lcom/android/calendar/time/DateTimeService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/calendar/time/DateTimeService$1;->this$0:Lcom/android/calendar/time/DateTimeService;

    iget-object v1, p0, Lcom/android/calendar/time/DateTimeService$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/calendar/time/DateTimeService;->setCalendarTimeZone(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/calendar/time/DateTimeService;->access$000(Lcom/android/calendar/time/DateTimeService;Ljava/lang/String;)V

    .line 57
    return-void
.end method
