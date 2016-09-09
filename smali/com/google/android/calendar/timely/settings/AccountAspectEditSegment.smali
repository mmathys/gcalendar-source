.class public abstract Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "AccountAspectEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AspectType:",
        "Ljava/lang/Object;",
        "InputType::",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">",
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<TAspectType;TInputType;>;"
    }
.end annotation


# instance fields
.field protected mAccount:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Ljava/lang/Class",
            "<TAspectType;>;",
            "Ljava/lang/Class",
            "<TInputType;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 17
    return-void
.end method


# virtual methods
.method public setAccount(Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;->mAccount:Landroid/accounts/Account;

    .line 21
    return-void
.end method
