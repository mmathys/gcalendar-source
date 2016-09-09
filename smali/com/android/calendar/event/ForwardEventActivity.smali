.class public Lcom/android/calendar/event/ForwardEventActivity;
.super Landroid/app/Activity;
.source "ForwardEventActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mModel:Lcom/android/calendar/event/CalendarEventModel;

.field private mTask:Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/calendar/event/ForwardEventActivity;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/ForwardEventActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    new-instance v0, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;-><init>(Lcom/android/calendar/event/ForwardEventActivity;)V

    iput-object v0, p0, Lcom/android/calendar/event/ForwardEventActivity;->mTask:Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/ForwardEventActivity;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/calendar/event/ForwardEventActivity;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/ForwardEventActivity;Lcom/android/calendar/event/CalendarEventModel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/calendar/event/ForwardEventActivity;->getEventForwardMessageBody(Lcom/android/calendar/event/CalendarEventModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/event/ForwardEventActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p8}, Lcom/android/calendar/event/ForwardEventActivity;->sendIntentWithAttachment(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getEventForwardMessageBody(Lcom/android/calendar/event/CalendarEventModel;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 299
    const/16 v6, 0x12

    .line 301
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    if-nez v0, :cond_0

    .line 302
    const/16 v6, 0x13

    .line 304
    :cond_0
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iget-wide v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    .line 305
    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/DateTimeFormatHelper;->getDateRangeText(JJI)Ljava/lang/String;

    move-result-object v1

    .line 307
    sget v2, Lcom/android/calendar/R$string;->forward_event_message_body:I

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 308
    const-string v0, ""

    :goto_0
    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 309
    const-string v0, ""

    :goto_1
    aput-object v0, v3, v4

    const/4 v4, 0x2

    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 310
    const-string v0, ""

    :goto_2
    aput-object v0, v3, v4

    const/4 v0, 0x3

    aput-object v1, v3, v0

    const/4 v1, 0x4

    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 312
    const-string v0, ""

    :goto_3
    aput-object v0, v3, v1

    const/4 v1, 0x5

    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 313
    const-string v0, ""

    :goto_4
    aput-object v0, v3, v1

    .line 307
    invoke-virtual {p0, v2, v3}, Lcom/android/calendar/event/ForwardEventActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 308
    :cond_1
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    goto :goto_0

    .line 309
    :cond_2
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    goto :goto_1

    .line 310
    :cond_3
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    goto :goto_2

    .line 312
    :cond_4
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    goto :goto_3

    .line 313
    :cond_5
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    goto :goto_4
.end method

.method private sendIntentWithAttachment(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 250
    if-eqz p1, :cond_2

    .line 251
    if-nez p3, :cond_0

    .line 252
    const-string p3, ""

    .line 255
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    .line 257
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.SUBJECT"

    sget v2, Lcom/android/calendar/R$string;->forward_event_email_subject:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p3, v3, v4

    .line 259
    invoke-virtual {p0, v2, v3}, Lcom/android/calendar/event/ForwardEventActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromAccountString"

    .line 260
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 261
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 264
    const-string v1, "com.android.mail.intent.extra.FORWARD_EVENT_COLLECTION_ID"

    .line 265
    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.mail.intent.extra.FORWARD_EVENT_ITEM_ID"

    .line 266
    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    .line 267
    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    if-eqz p4, :cond_1

    .line 271
    const-string v1, "com.android.mail.intent.extra.FORWARD_EVENT_UID"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    :cond_1
    const-string v1, "iCalendar"

    .line 276
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "text/calendar"

    aput-object v3, v2, v4

    .line 277
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 278
    new-instance v4, Landroid/content/ClipData;

    invoke-direct {v4, v1, v2, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 279
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/calendar/event/ForwardEventActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 283
    sget v1, Lcom/android/calendar/R$string;->forward_event_chooser_title:I

    .line 284
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/ForwardEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/ForwardEventActivity;->startActivity(Landroid/content/Intent;)V

    .line 291
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/event/ForwardEventActivity;->finish()V

    .line 292
    return-void

    .line 287
    :cond_3
    sget v0, Lcom/android/calendar/R$string;->forward_event_no_application:I

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/calendar/event/ForwardEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/calendar/event/ForwardEventActivity;->finish()V

    .line 229
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    sget v0, Lcom/android/calendar/R$string;->no_calendar_permission_title:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    invoke-virtual {p0}, Lcom/android/calendar/event/ForwardEventActivity;->finish()V

    goto :goto_0

    .line 222
    :cond_1
    const-string v1, "eventModel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/android/calendar/event/CalendarEventModel;

    if-nez v1, :cond_3

    .line 224
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/ForwardEventActivity;->finish()V

    goto :goto_0

    .line 228
    :cond_3
    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    iput-object v0, p0, Lcom/android/calendar/event/ForwardEventActivity;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 243
    iget-object v0, p0, Lcom/android/calendar/event/ForwardEventActivity;->mTask:Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/calendar/event/ForwardEventActivity;->mTask:Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->cancel(Z)Z

    .line 246
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 235
    iget-object v0, p0, Lcom/android/calendar/event/ForwardEventActivity;->mTask:Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;

    invoke-virtual {v0}, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/calendar/event/ForwardEventActivity;->mTask:Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/calendar/event/CalendarEventModel;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/calendar/event/ForwardEventActivity;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/ForwardEventActivity$BuildIcsFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 238
    :cond_0
    return-void
.end method
