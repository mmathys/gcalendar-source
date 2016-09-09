.class Lcom/android/calendar/GoogleCalendarUriIntentFilter$1;
.super Landroid/content/AsyncQueryHandler;
.source "GoogleCalendarUriIntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/GoogleCalendarUriIntentFilter;->updateSelfAttendeeStatus(ILjava/lang/String;ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/GoogleCalendarUriIntentFilter;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/android/calendar/GoogleCalendarUriIntentFilter;Landroid/content/ContentResolver;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$1;->this$0:Lcom/android/calendar/GoogleCalendarUriIntentFilter;

    iput-object p3, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$1;->val$intent:Landroid/content/Intent;

    iput p4, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$1;->val$status:I

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 3

    .prologue
    .line 182
    if-nez p3, :cond_0

    .line 183
    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No rows updated - starting event viewer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$1;->val$intent:Landroid/content/Intent;

    const-string v1, "attendeeStatus"

    iget v2, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$1;->val$status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    iget-object v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$1;->this$0:Lcom/android/calendar/GoogleCalendarUriIntentFilter;

    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$100(Lcom/android/calendar/GoogleCalendarUriIntentFilter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 203
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v0, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$1;->val$status:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 191
    :pswitch_1
    sget v0, Lcom/android/calendar/R$string;->rsvp_accepted:I

    .line 202
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/GoogleCalendarUriIntentFilter$1;->this$0:Lcom/android/calendar/GoogleCalendarUriIntentFilter;

    # getter for: Lcom/android/calendar/GoogleCalendarUriIntentFilter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->access$100(Lcom/android/calendar/GoogleCalendarUriIntentFilter;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 194
    :pswitch_2
    sget v0, Lcom/android/calendar/R$string;->rsvp_declined:I

    goto :goto_1

    .line 197
    :pswitch_3
    sget v0, Lcom/android/calendar/R$string;->rsvp_tentative:I

    goto :goto_1

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
