.class Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger$1;
.super Ljava/lang/Object;
.source "EditScreenAnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->log(Landroid/content/Context;ILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

.field final synthetic val$saveMode:I


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;Landroid/content/Context;ILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger$1;->this$0:Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

    iput-object p2, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger$1;->val$appContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger$1;->val$saveMode:I

    iput-object p4, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger$1;->val$calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger$1;->this$0:Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger$1;->val$appContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger$1;->val$saveMode:I

    iget-object v3, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger$1;->val$calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    # invokes: Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->logInBackground(Landroid/content/Context;ILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->access$000(Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;Landroid/content/Context;ILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V

    .line 183
    return-void
.end method
