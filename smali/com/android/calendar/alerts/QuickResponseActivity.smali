.class public Lcom/android/calendar/alerts/QuickResponseActivity;
.super Landroid/app/ListActivity;
.source "QuickResponseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;
    }
.end annotation


# instance fields
.field private mEventId:J

.field private mResponses:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/calendar/alerts/QuickResponseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/calendar/alerts/QuickResponseActivity;->finish()V

    .line 86
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    sget v0, Lcom/android/calendar/R$string;->no_calendar_permission_title:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    invoke-virtual {p0}, Lcom/android/calendar/alerts/QuickResponseActivity;->finish()V

    goto :goto_0

    .line 64
    :cond_1
    const-string v1, "eventId"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mEventId:J

    .line 65
    iget-wide v0, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mEventId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/android/calendar/alerts/QuickResponseActivity;->finish()V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/alerts/QuickResponseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    invoke-static {p0}, Lcom/android/calendar/Utils;->getQuickResponses(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 78
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 81
    iget-object v2, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    aget-object v3, v1, v0

    aput-object v3, v2, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/calendar/alerts/QuickResponseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->quick_response_custom_msg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 85
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/android/calendar/R$layout;->quick_response_item:I

    iget-object v2, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/QuickResponseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mResponses:[Ljava/lang/String;

    aget-object v0, v0, p3

    .line 98
    :cond_0
    new-instance v1, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;

    iget-wide v2, p0, Lcom/android/calendar/alerts/QuickResponseActivity;->mEventId:J

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;-><init>(Lcom/android/calendar/alerts/QuickResponseActivity;JLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/calendar/alerts/QuickResponseActivity$QueryThread;->start()V

    .line 99
    return-void
.end method
