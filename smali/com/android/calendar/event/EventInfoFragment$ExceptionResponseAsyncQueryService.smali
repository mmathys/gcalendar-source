.class Lcom/android/calendar/event/EventInfoFragment$ExceptionResponseAsyncQueryService;
.super Lcom/android/calendar/AsyncQueryService;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExceptionResponseAsyncQueryService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EventInfoFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2297
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$ExceptionResponseAsyncQueryService;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    .line 2298
    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 2299
    return-void
.end method

.method private onInsertOrBatchComplete(Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2316
    if-nez p1, :cond_0

    .line 2318
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$ExceptionResponseAsyncQueryService;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->doDismissScreen()V

    .line 2325
    :goto_0
    return-void

    .line 2322
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$ExceptionResponseAsyncQueryService;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->forceNotifyChange(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2323
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$ExceptionResponseAsyncQueryService;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/calendar/event/EventInfoFragment;->loadNewEventException(JI)V

    goto :goto_0
.end method


# virtual methods
.method protected onBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V
    .locals 0

    .prologue
    .line 2303
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/AsyncQueryService;->onBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V

    .line 2307
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 2311
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/AsyncQueryService;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 2312
    invoke-direct {p0, p3, p2}, Lcom/android/calendar/event/EventInfoFragment$ExceptionResponseAsyncQueryService;->onInsertOrBatchComplete(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 2313
    return-void
.end method
