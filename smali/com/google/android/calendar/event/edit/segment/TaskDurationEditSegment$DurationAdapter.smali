.class Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;
.super Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;
.source "TaskDurationEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DurationAdapter"
.end annotation


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private final mTaskDurationMinutes:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Spinner;)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;-><init>(Landroid/content/Context;Landroid/widget/Spinner;)V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;->mResources:Landroid/content/res/Resources;

    .line 110
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$array;->task_duration_minutes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;->mTaskDurationMinutes:[I

    .line 111
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;->mTaskDurationMinutes:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;->mTaskDurationMinutes:[I

    aget v0, v0, p1

    const v1, 0xea60

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 125
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 141
    const v0, 0xea60

    div-int v2, p1, v0

    move v0, v1

    .line 142
    :goto_0
    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;->mTaskDurationMinutes:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;->mTaskDurationMinutes:[I

    aget v3, v3, v0

    .line 144
    if-gt v2, v3, :cond_0

    .line 148
    :goto_1
    return v0

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 148
    goto :goto_1
.end method

.method public getTextAtPosition(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;->mTaskDurationMinutes:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Lcom/google/android/calendar/task/TaskUtils;->getDisplayedDuration(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
