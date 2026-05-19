import '../models/client.dart';
import '../models/workflow.dart';

final workflows = <Workflow>[
  Workflow(
    id: 'w1',
    name: 'Client Onboarding',
    description: 'Welcome email, intake form, next steps.',
    steps: [
      'Send welcome email',
      'Send intake form',
      'Schedule kickoff call',
    ],
  ),
  Workflow(
    id: 'w2',
    name: 'Invoice Reminder',
    description: 'Automated polite reminders until payment.',
    steps: [
      'Send invoice email',
      'Reminder after 7 days',
      'Final reminder after 14 days',
    ],
  ),
];

final clients = <Client>[
  Client(
    id: 'c1',
    name: 'Acme Design Co.',
    email: 'hello@acmedesign.co',
    status: 'Onboarding',
    workflowIds: ['w1'],
  ),
  Client(
    id: 'c2',
    name: 'Bright Coaching',
    email: 'info@brightcoaching.com',
    status: 'In Progress',
    workflowIds: ['w1', 'w2'],
  ),
];
