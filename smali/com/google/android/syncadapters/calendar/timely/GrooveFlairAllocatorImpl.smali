.class public Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl;
.super Ljava/lang/Object;
.source "GrooveFlairAllocatorImpl.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocator;


# static fields
.field private static final GROOVE_CATEGORY_KEYS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROOVE_FLAIR_KEYS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl$1;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl;->GROOVE_FLAIR_KEYS:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl$2;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl$2;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl;->GROOVE_CATEGORY_KEYS:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocateCategoryIllustration(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl;->GROOVE_CATEGORY_KEYS:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/google/android/calendar/api/HabitUtil;->getParentType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public allocateFlair(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl;->GROOVE_FLAIR_KEYS:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
