.class Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;
.super Ljava/lang/Object;
.source "CreateFabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CreateFabFragment$CreateFabStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scope"
.end annotation


# instance fields
.field protected final mCreateFab:Landroid/view/View;

.field protected final mCreateFabParent:Landroid/view/View;

.field protected final mStartDay:Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;->mCreateFab:Landroid/view/View;

    .line 92
    iput-object p2, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;->mCreateFabParent:Landroid/view/View;

    .line 93
    iput-object p3, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;->mStartDay:Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;Lcom/android/calendar/CreateFabFragment$1;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;-><init>(Landroid/view/View;Landroid/view/View;Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;)V

    return-void
.end method
