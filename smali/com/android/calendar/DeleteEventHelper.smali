.class public Lcom/android/calendar/DeleteEventHelper;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDeleteDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteNotifyListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

.field private mEndMillis:J

.field private mModel:Lcom/android/calendar/event/CalendarEventModel;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mStartMillis:J

.field private mSyncId:Ljava/lang/String;

.field private mWhichDelete:I

.field private mWhichIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/DeleteEventHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNotifyListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

    .line 131
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/DeleteEventHelper$2;-><init>(Lcom/android/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 142
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/DeleteEventHelper$3;-><init>(Lcom/android/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/android/calendar/DeleteEventHelper$1;

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/DeleteEventHelper$1;-><init>(Lcom/android/calendar/DeleteEventHelper;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/DeleteEventHelper;)J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/calendar/DeleteEventHelper;)J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/calendar/DeleteEventHelper;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/calendar/DeleteEventHelper;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/calendar/DeleteEventHelper;JJLcom/android/calendar/event/CalendarEventModel;I)V
    .locals 1

    .prologue
    .line 63
    invoke-direct/range {p0 .. p6}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLcom/android/calendar/event/CalendarEventModel;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/DeleteEventHelper;)Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/calendar/DeleteEventHelper;->doDelete()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/DeleteEventHelper;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/DeleteEventHelper;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private beforeDeleteInitiated()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNotifyListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNotifyListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

    invoke-interface {v0}, Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;->beforeDeleteInitiated()V

    .line 477
    :cond_0
    return-void
.end method

.method private delete(JJLcom/android/calendar/event/CalendarEventModel;I)V
    .locals 7

    .prologue
    .line 224
    iput p6, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    .line 225
    iput-wide p1, p0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    .line 226
    iput-wide p3, p0, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    .line 227
    iput-object p5, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 228
    iget-object v0, p5, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    .line 233
    iget-boolean v0, p5, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    .line 235
    if-nez v0, :cond_2

    invoke-virtual {p5}, Lcom/android/calendar/event/CalendarEventModel;->isModifiableGroove()Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p5, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-eqz v0, :cond_1

    .line 237
    sget v0, Lcom/android/calendar/R$string;->delete_this_reminder_title:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 240
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 242
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNotifyListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 304
    :cond_0
    :goto_1
    return-void

    .line 238
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->delete_this_event_title:I

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    iget-boolean v0, p5, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    if-eqz v0, :cond_3

    .line 248
    sget v0, Lcom/android/calendar/R$array;->delete_groove_labels:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 252
    sget v0, Lcom/android/calendar/R$array;->delete_repeating_values:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 253
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 254
    array-length v4, v1

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_5

    aget v5, v1, v0

    .line 255
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 249
    :cond_3
    iget-boolean v0, p5, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/android/calendar/R$array;->delete_repeating_reminder_labels:I

    goto :goto_2

    .line 250
    :cond_4
    sget v0, Lcom/android/calendar/R$array;->delete_repeating_labels:I

    goto :goto_2

    .line 258
    :cond_5
    iget-boolean v0, p5, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    if-eqz v0, :cond_8

    .line 260
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 281
    :cond_6
    :goto_4
    const/4 v0, -0x1

    if-eq p6, v0, :cond_7

    .line 283
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p6

    .line 285
    :cond_7
    iput-object v3, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichIndex:Ljava/util/ArrayList;

    .line 287
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$string;->delete_recurring_event_title:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p5, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 288
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 290
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, p6, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 292
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    .line 295
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNotifyListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 297
    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 301
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 262
    :cond_8
    iget-boolean v0, p5, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-eqz v0, :cond_9

    .line 264
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 265
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 274
    :goto_5
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 276
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 277
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 270
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 271
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5
.end method

.method private deleteExceptionEvent()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-eqz v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    .line 377
    new-instance v4, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v4, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 378
    const-string v3, "eventStatus"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 381
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-static {}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteInitiated(I)V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNotifyListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNotifyListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

    invoke-interface {v0, p1}, Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;->onDeleteInitiated(I)V

    .line 483
    :cond_0
    return-void
.end method

.method private deleteRepeatingEvent()Z
    .locals 14

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 389
    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-eqz v1, :cond_2

    .line 391
    iget v1, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    if-eq v1, v8, :cond_0

    iget v1, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    if-ne v1, v11, :cond_1

    :cond_0
    move v0, v11

    :cond_1
    move v11, v0

    .line 470
    :goto_0
    return v11

    .line 395
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 396
    iget-object v3, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v3, v3, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 397
    iget-object v4, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v12, v4, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    .line 399
    iget v4, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    packed-switch v4, :pswitch_data_0

    move v11, v0

    .line 470
    goto :goto_0

    .line 404
    :pswitch_0
    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v1}, Lcom/android/calendar/event/CalendarEventModel;->isFirstEventInSeries()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 410
    :cond_3
    new-instance v4, Landroid/content/ContentValues;

    const/16 v1, 0xb

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 414
    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 415
    const-string v5, "title"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 418
    iget-object v5, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v6, v5, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    .line 419
    const-string v5, "eventTimezone"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v5, "allDay"

    if-eqz v3, :cond_5

    move v1, v11

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v1, "originalAllDay"

    if-eqz v3, :cond_4

    move v0, v11

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v0, "calendar_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 423
    const-string v0, "dtstart"

    iget-wide v6, p0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 424
    const-string v0, "dtend"

    iget-wide v6, p0, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 425
    const-string v0, "original_sync_id"

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v0, "original_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    const-string v0, "originalInstanceTime"

    iget-wide v6, p0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 428
    const-string v0, "eventStatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    const-string v0, "organizer"

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-static {}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/AsyncQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_5
    move v1, v0

    .line 420
    goto :goto_1

    .line 436
    :pswitch_1
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 437
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-static {}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel;->isFirstEventInSeries()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 444
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 446
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-static {}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 452
    :cond_6
    new-instance v3, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v3}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 453
    invoke-virtual {v3, v1}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v9, v0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    move-object v10, v2

    invoke-static/range {v3 .. v10}, Lcom/android/calendar/event/EditHelper;->constrainRecurrenceToTimeframe(Lcom/android/calendarcommon2/EventRecurrence;JJLjava/lang/String;ZLcom/android/calendarcommon2/EventRecurrence;)V

    .line 459
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 462
    const-string v0, "dtstart"

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v6, v1, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 463
    const-string v0, "rrule"

    invoke-virtual {v3}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 465
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-static {}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private deleteSingleEvent()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 359
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-eqz v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 365
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-static {}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doDelete()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 321
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    .line 322
    iget-object v3, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 325
    invoke-direct {p0}, Lcom/android/calendar/DeleteEventHelper;->beforeDeleteInitiated()V

    .line 326
    iget-object v4, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v4}, Lcom/android/calendar/event/CalendarEventModel;->isModifiableGroove()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 327
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 328
    iget v3, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    if-nez v3, :cond_2

    .line 329
    invoke-direct {p0}, Lcom/android/calendar/DeleteEventHelper;->deleteSingleEvent()V

    .line 330
    iget-object v3, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/calendar/groove/TimelineGroove;->onInstanceDeleted(Landroid/content/Context;)V

    :cond_0
    :goto_0
    move v0, v1

    .line 354
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/calendar/DeleteEventHelper;->deleteInitiated(I)V

    move v1, v2

    .line 355
    :goto_2
    return v1

    .line 331
    :cond_2
    iget v3, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    if-ne v3, v2, :cond_0

    .line 332
    iget-object v3, p0, Lcom/android/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/calendar/groove/TimelineGroove;->deleteAllFollowing(Landroid/content/Context;)V

    goto :goto_0

    .line 334
    :cond_3
    if-nez v0, :cond_5

    .line 335
    if-nez v3, :cond_4

    .line 336
    invoke-direct {p0}, Lcom/android/calendar/DeleteEventHelper;->deleteSingleEvent()V

    move v0, v1

    goto :goto_1

    .line 338
    :cond_4
    invoke-direct {p0}, Lcom/android/calendar/DeleteEventHelper;->deleteExceptionEvent()V

    move v0, v1

    goto :goto_1

    .line 341
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    if-ne v0, v2, :cond_6

    .line 342
    sget-object v0, Lcom/android/calendar/DeleteEventHelper;->TAG:Ljava/lang/String;

    const-string v2, "DELETE_ALL_FOLLOWING is only supported for organizer"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 345
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    if-nez v0, :cond_7

    .line 346
    sget-object v0, Lcom/android/calendar/DeleteEventHelper;->TAG:Ljava/lang/String;

    const-string v2, "DELETE_SELECTED is only supported for synchronized events"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 349
    :cond_7
    iget v0, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    .line 350
    invoke-direct {p0}, Lcom/android/calendar/DeleteEventHelper;->deleteRepeatingEvent()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2
.end method


# virtual methods
.method public delete(JJJI)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 170
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p5

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 171
    iget-object v2, p0, Lcom/android/calendar/DeleteEventHelper;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-static {}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v3

    sget-object v6, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iput-wide p1, p0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    .line 174
    iput-wide p3, p0, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    .line 175
    move/from16 v0, p7

    iput v0, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    .line 176
    return-void
.end method

.method public delete(JJJILcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;)V
    .locals 1

    .prologue
    .line 180
    iput-object p8, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNotifyListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

    .line 181
    invoke-virtual/range {p0 .. p7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 182
    return-void
.end method

.method public delete(JJLcom/android/calendar/event/CalendarEventModel;ILcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;)V
    .locals 1

    .prologue
    .line 185
    iput-object p7, p0, Lcom/android/calendar/DeleteEventHelper;->mDeleteNotifyListener:Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;

    .line 186
    invoke-direct/range {p0 .. p6}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLcom/android/calendar/event/CalendarEventModel;I)V

    .line 187
    return-void
.end method

.method public forceDelete(JLcom/android/calendar/event/CalendarEventModel;I)Z
    .locals 3

    .prologue
    .line 308
    iput p4, p0, Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I

    .line 309
    iput-wide p1, p0, Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J

    .line 310
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J

    .line 311
    iput-object p3, p0, Lcom/android/calendar/DeleteEventHelper;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 312
    iget-object v0, p3, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    .line 313
    invoke-direct {p0}, Lcom/android/calendar/DeleteEventHelper;->doDelete()Z

    move-result v0

    return v0
.end method
