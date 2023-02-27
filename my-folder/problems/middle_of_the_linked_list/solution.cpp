/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution {
public:
    ListNode* middleNode(ListNode* head) {
        int n = 0;
        ListNode *head2 = head;
        while(head != NULL){
            head = head->next;
            n++;
        }
        for (int i = 0; i < (int)n / 2; i++)
            head2 = head2->next;
        return head2;
    }
};