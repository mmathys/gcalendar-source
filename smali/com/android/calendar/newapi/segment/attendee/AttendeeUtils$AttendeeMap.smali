.class public Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;
.super Ljava/lang/Object;
.source "AttendeeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttendeeMap"
.end annotation


# instance fields
.field private final mAttendees:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/calendar/api/attendee/Attendee;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attendee/Attendee;",
            ">;",
            "Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;->mAttendees:Landroid/util/SparseArray;

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attendee/Attendee;

    .line 72
    invoke-interface {p2, v0}, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$Filter;->isValidType(Lcom/google/android/calendar/api/attendee/Attendee;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, v0, Lcom/google/android/calendar/api/attendee/Attendee;->response:Lcom/google/android/calendar/api/attendee/Response;

    iget v3, v1, Lcom/google/android/calendar/api/attendee/Response;->status:I

    .line 76
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;->mAttendees:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 77
    if-nez v1, :cond_1

    .line 78
    new-instance v1, Ljava/util/TreeSet;

    sget-object v4, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils;->DEFAULT_ATTENDEE_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v1, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 79
    iget-object v4, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;->mAttendees:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method


# virtual methods
.method public getAttendeeCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    move v1, v0

    move v2, v0

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;->mAttendees:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;->mAttendees:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 91
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 94
    :cond_0
    return v2
.end method

.method public getAttendees(I)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/calendar/api/attendee/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attendee/AttendeeUtils$AttendeeMap;->mAttendees:Landroid/util/SparseArray;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
