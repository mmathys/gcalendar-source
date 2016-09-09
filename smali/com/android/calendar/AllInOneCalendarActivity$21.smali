.class Lcom/android/calendar/AllInOneCalendarActivity$21;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity;->showFeedback(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;

.field final synthetic val$localEventId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 3359
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$21;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iput-object p2, p0, Lcom/android/calendar/AllInOneCalendarActivity$21;->val$localEventId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3363
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$21;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$21;->val$localEventId:Ljava/lang/Long;

    .line 3364
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3363
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3365
    return-void
.end method
