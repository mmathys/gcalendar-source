.class Lcom/android/calendar/AllInOneCalendarActivity$22;
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
    .line 3369
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$22;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iput-object p2, p0, Lcom/android/calendar/AllInOneCalendarActivity$22;->val$localEventId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$22;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    sget v1, Lcom/android/calendar/R$string;->analytics_action_view_link_clicked:I

    invoke-static {v0, v1}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 3375
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$22;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-static {v1}, Lcom/android/calendar/launch/LaunchIntentConstants;->getViewAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3377
    sget-object v1, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$22;->val$localEventId:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/events/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3379
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3380
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$22;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->readTimelineItemFromIntent(Landroid/content/Intent;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/AllInOneCalendarActivity;->launchInfoBubble(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)V

    .line 3382
    return-void
.end method
