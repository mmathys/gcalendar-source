.class Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;
.super Ljava/lang/Object;
.source "ChangeAnimationDescriptor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/editor/ChangeAnimationDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Trigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCode:Ljava/lang/Runnable;

.field private final mProgress:F


# direct methods
.method private constructor <init>(FLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;->mProgress:F

    .line 136
    iput-object p2, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;->mCode:Ljava/lang/Runnable;

    .line 137
    return-void
.end method

.method synthetic constructor <init>(FLjava/lang/Runnable;Lcom/android/calendar/editor/ChangeAnimationDescriptor$1;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;-><init>(FLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;)F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;->mProgress:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;->mCode:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;)I
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;->mProgress:F

    iget v1, p1, Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 130
    check-cast p1, Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;

    invoke-virtual {p0, p1}, Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;->compareTo(Lcom/android/calendar/editor/ChangeAnimationDescriptor$Trigger;)I

    move-result v0

    return v0
.end method
